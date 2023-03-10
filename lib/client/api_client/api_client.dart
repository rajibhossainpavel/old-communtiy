import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/exception/exception.dart';
import 'package:oshiruco_app/model/enum/http_method.dart';
import 'package:oshiruco_app/model/http_helper_config/http_helper_config.dart';
import 'package:oshiruco_app/provider/app_provider.dart';
import 'package:oshiruco_app/provider/error_provider.dart';

// 401 エラーになってもアプリを再起動しない URL（パス） のリスト
const _urlsForAcceptUnauthorizedError = ['/notice/token'];

abstract class HttpHelper {
  HttpHelper({
    required HttpHelperConfig config,
    required Dio http,
    required ProviderRef ref,
  })  : _config = config,
        _http = http,
        _ref = ref;

  final HttpHelperConfig _config;
  HttpHelperConfig get config => _config;
  final Dio _http;
  Dio get http => _http;
  final ProviderRef _ref;

  static String token = '';

  Future<Response<T>> _request<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    final initController = _ref.watch(appProvider.notifier);

    try {
      options ??= Options();
      final response = await http.request<T>(
        path,
        options: options.copyWith(headers: <String, dynamic>{
          'Authorization': 'Bearer ${HttpHelper.token}',
          ...?options.headers
        }),
        queryParameters: queryParameters,
        data: data,
      );
      final dt = response.data;
      final statusCode = response.statusCode ?? 0;
      if (dt != null && statusCode >= 200 && statusCode < 300) {
        final d = dt as Map<String, dynamic>;
        if (d['token'] != null) {
          debugPrint("RETURNED-TOKEN:"+(d['token'] as String));
          final token = d['token'] as String;
          if (token != '' && _validToken(token)) {
            HttpHelper.token = token;
            await initController.updateToken(token: token);
          } else {
            debugPrint(
              'INVALID_TOKEN: $token, REQUEST: ${response.requestOptions}',
            );
          }
        }
      }
      return response;
    } on DioError catch (e) {
      debugPrint('API ERROR: $e, DATA: ${e.response?.data}');
      if ((e.response?.statusCode ?? 0) == 502) {
        final errorController = _ref.read(errorProvider.notifier);
        errorController.setHttpError(const HttpBadGatewayException());

        throw const HttpBadGatewayException();
      }
      if ((e.response?.statusCode ?? 0) == 401 &&
          !_urlsForAcceptUnauthorizedError.contains(e.requestOptions.path)) {
        initController.restartApplication();
      }
      rethrow;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  bool _validToken(String token) {
    return token.split('.').length == 3;
  }

  Options checkOptions({required HttpMethod method, Options? options}) {
    options ??= Options(
      method: http.options.method,
      headers: http.options.headers,
      contentType: http.options.contentType,
    );
    options.method = method.stringfy();
    return options;
  }

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    return _request<T>(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.get,
        options: options,
      ),
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.put,
        options: options,
      ),
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.post,
        options: options,
      ),
    );
  }

  Future<Response<T>> delete<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.delete,
        options: options,
      ),
    );
  }

  Future<Response<T>> patch<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    return _request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: checkOptions(
        method: HttpMethod.patch,
        options: options,
      ),
    );
  }
}
