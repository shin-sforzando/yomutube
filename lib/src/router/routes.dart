// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fluro/fluro.dart';

// Project imports:
import 'package:yomutube/src/video_list/presentation/video_list_view.dart';

Handler createBasicHandler(Widget targetWidget) {
  return Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return targetWidget;
  });
}

Handler videoListHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return VideoListView(dateLikeString: params['dateLikeString'][0]);
});

class Routes {
  static void configureRoutes(FluroRouter router) {
    router
      ..define('/', handler: createBasicHandler(const VideoListView()))
      ..define('/videos', handler: createBasicHandler(const VideoListView()))
      ..define('/videos/:dateLikeString', handler: videoListHandler);
  }
}
