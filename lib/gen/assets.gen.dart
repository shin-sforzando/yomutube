/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

// Flutter imports:
import 'package:flutter/widgets.dart';

class $WebGen {
  const $WebGen();

  /// File path: web/android-chrome-192x192.png
  AssetGenImage get androidChrome192x192 =>
      const AssetGenImage('web/android-chrome-192x192.png');

  /// File path: web/android-chrome-512x512.png
  AssetGenImage get androidChrome512x512 =>
      const AssetGenImage('web/android-chrome-512x512.png');

  /// File path: web/apple-touch-icon.png
  AssetGenImage get appleTouchIcon =>
      const AssetGenImage('web/apple-touch-icon.png');

  /// File path: web/browserconfig.xml
  String get browserconfig => 'web/browserconfig.xml';

  /// File path: web/favicon-16x16.png
  AssetGenImage get favicon16x16 =>
      const AssetGenImage('web/favicon-16x16.png');

  /// File path: web/favicon-32x32.png
  AssetGenImage get favicon32x32 =>
      const AssetGenImage('web/favicon-32x32.png');

  /// File path: web/favicon.ico
  String get favicon => 'web/favicon.ico';

  /// File path: web/index.html
  String get index => 'web/index.html';

  /// File path: web/mstile-150x150.png
  AssetGenImage get mstile150x150 =>
      const AssetGenImage('web/mstile-150x150.png');

  /// File path: web/safari-pinned-tab.svg
  String get safariPinnedTab => 'web/safari-pinned-tab.svg';

  /// File path: web/site.webmanifest
  String get site => 'web/site.webmanifest';

  /// List of all assets
  List<dynamic> get values => [
        androidChrome192x192,
        androidChrome512x512,
        appleTouchIcon,
        browserconfig,
        favicon16x16,
        favicon32x32,
        favicon,
        index,
        mstile150x150,
        safariPinnedTab,
        site
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/YomuTube_450x90.png
  AssetGenImage get yomuTube450x90 =>
      const AssetGenImage('assets/images/YomuTube_450x90.png');

  /// File path: assets/images/YomuTube_450x90_svg.svg
  String get yomuTube450x90Svg => 'assets/images/YomuTube_450x90_svg.svg';

  /// File path: assets/images/YomuTube_512x512.png
  AssetGenImage get yomuTube512x512 =>
      const AssetGenImage('assets/images/YomuTube_512x512.png');

  /// File path: assets/images/flutter_logo.png
  AssetGenImage get flutterLogo =>
      const AssetGenImage('assets/images/flutter_logo.png');

  /// File path: assets/images/undraw_Online_video_re_fou2.png
  AssetGenImage get undrawOnlineVideoReFou2 =>
      const AssetGenImage('assets/images/undraw_Online_video_re_fou2.png');

  /// File path: assets/images/undraw_online_video_re_fou2_svg.svg
  String get undrawOnlineVideoReFou2Svg =>
      'assets/images/undraw_online_video_re_fou2_svg.svg';

  /// List of all assets
  List<dynamic> get values => [
        yomuTube450x90,
        yomuTube450x90Svg,
        yomuTube512x512,
        flutterLogo,
        undrawOnlineVideoReFou2,
        undrawOnlineVideoReFou2Svg
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $WebGen web = $WebGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
