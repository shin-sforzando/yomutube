// Flutter imports:
import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  final String videoId;

  VideoView({Key? key, required this.videoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(videoId),
      ),
      body: Center(
        child: Text(videoId),
      ),
    );
  }
}
