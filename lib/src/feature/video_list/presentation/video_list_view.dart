// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:yomutube/src/feature/video_list/presentation/component/video_list_item.dart';

class VideoListView extends StatefulWidget {
  const VideoListView({
    super.key,
    this.items = const [VideoListItem(1), VideoListItem(2), VideoListItem(3)],
  });

  final List<VideoListItem> items;

  @override
  State<VideoListView> createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video List'),
      ),
      body: const Text('Video List'),
    );
  }
}
