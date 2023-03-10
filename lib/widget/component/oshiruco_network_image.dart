import 'package:flutter/material.dart';

import 'package:oshiruco_app/application/oshiruco_circle_progress.dart';
import 'package:oshiruco_app/extension/string_extension.dart';
import 'package:oshiruco_app/gen/assets.gen.dart';

enum OshirucoImageType {
  group,
  diary,
  user,
  communication,
  selfHistory,
}

class OshirucoNetworkImage extends StatelessWidget {
  // TODO(tamofplease): 各objectに対してnamedConstructorを作成したい。。。
  const OshirucoNetworkImage(
    this._src, {
    required OshirucoImageType type,
    BoxFit fit = BoxFit.cover,
    double? height,
    double? width,
    Widget? loadingWidget,
    Widget? errorWidget,
    Key? key,
  })  : _type = type,
        _fit = fit,
        _width = width,
        _height = height,
        _errorWidget = errorWidget,
        _loadingWidget = loadingWidget,
        super(key: key);

  final OshirucoImageType _type;

  final String _src;

  final BoxFit _fit;

  final double? _height;

  final double? _width;

  final Widget? _errorWidget;

  final Widget? _loadingWidget;

  String oshirucoSrc(String src, OshirucoImageType type) {
    switch (type) {
      case OshirucoImageType.diary:
        // TODO(qkuronekop): fix me.
        return src.toImageUrl();
      case OshirucoImageType.user:
        return '/user/$src'.toImageUrl();
      case OshirucoImageType.communication:
        return '/user/$src'.toImageUrl();
      case OshirucoImageType.selfHistory:
        return '/user/$src'.toImageUrl();
      case OshirucoImageType.group:
        return src.toImageUrl();
    }
  }

  AssetGenImage emptyImage(OshirucoImageType type) {
    switch (type) {
      case OshirucoImageType.diary:
        return Assets.images.emptyOshiruco;
      case OshirucoImageType.user:
        return Assets.images.userMan;
      case OshirucoImageType.communication:
        return Assets.images.userMan;
      case OshirucoImageType.selfHistory:
        return Assets.images.emptyOshiruco;
      case OshirucoImageType.group:
        return Assets.images.emptyOshiruco;
    }
  }

  @override
  Widget build(BuildContext context) {
    final placeholder = emptyImage(_type).image(
      height: _height,
      width: _width,
      fit: _fit,
    );

    final networkPath = oshirucoSrc(_src, _type);
    return Image.network(
      networkPath,
      fit: _fit,
      height: _height,
      width: _width,
      loadingBuilder: (
        context,
        child,
        loadingProgress,
      ) =>
          loadingProgress == null ? child : _loadingWidget ?? _loading(),
      errorBuilder: (context, child, s) => _errorWidget ?? placeholder,
    );
  }

  Widget _loading() {
    return SizedBox(
      height: _height,
      width: _width,
      child: const Center(
        child: OshirucoCircleProgressIndicator(),
      ),
    );
  }
}
