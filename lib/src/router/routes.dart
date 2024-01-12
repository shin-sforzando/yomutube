// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fluro/fluro.dart';

// Project imports:
import 'package:yomutube/src/feature/video_list/presentation/video_list_view.dart';

Handler createBasicHandler(Widget targetWidget) {
  return Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
          targetWidget);
}

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define('/', handler: createBasicHandler(const VideoListView()));
  }
}
