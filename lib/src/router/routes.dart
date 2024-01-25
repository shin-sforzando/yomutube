// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fluro/fluro.dart';

// Project imports:
import 'package:yomutube/src/presentation/video_list_view.dart';
import 'package:yomutube/src/presentation/video_view.dart';

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

Handler videoHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return VideoView(videoId: params['videoId'][0]);
});

class Routes {
  static void configureRoutes(FluroRouter router) {
    router
      ..define('/', handler: createBasicHandler(VideoListView()))
      ..define('/videos', handler: createBasicHandler(VideoListView()))
      ..define('/videos/:dateLikeString', handler: videoListHandler)
      ..define('/video', handler: createBasicHandler(VideoListView()))
      ..define('/video/:videoId', handler: videoHandler);
  }
}
