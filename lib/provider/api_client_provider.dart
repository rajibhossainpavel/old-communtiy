import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/client/api_client/oshiruco_api_client.dart';
import 'package:oshiruco_app/model/http_helper_config/http_helper_config.dart';

final httpHelperConfigProvider = Provider(
  (ref) => HttpHelperConfig(
    baseUrl: dotenv.env['API_HOST'] ?? '',
    maxAttempts: int.parse(
      dotenv.env['OSHIRUCO_API_MAX_ATTEMPTS'] ?? '0',
    ),
    headers: <String, dynamic>{
      'Content-Type': 'application/json',
    },
  ),
);

Dio _getDio(String env) {
  final dio = Dio();
  if (env != 'prod') {
    dio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true),
    );
  }
  return dio;
}

// ApiCLientの呼び出し。
final oshirucoClientProvider = Provider(
  (ref) => OshirucoApiClient(
    config: ref.watch(
      httpHelperConfigProvider,
    ),
    ref: ref,
    http: _getDio(dotenv.env['ENV'] ?? ''),
  ),
);
