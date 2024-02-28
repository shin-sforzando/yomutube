// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// Project imports:
import 'package:yomutube/src/domain/model/video.dart';

class VideoView extends StatelessWidget {
  final String videoId;

  VideoView({Key? key, required this.videoId}) : super(key: key);

  Future<QuerySnapshot<Video>> _getVideo() async {
    return FirebaseFirestore.instance
        .collection('videos')
        .where('id', isEqualTo: videoId)
        .withConverter<Video>(
            fromFirestore: (snapshot, _) => Video.fromMap(snapshot.data()!),
            toFirestore: (video, _) => {})
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(videoId),
      ),
      body: FutureBuilder<QuerySnapshot<Video>>(
        future: _getVideo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final video = snapshot.data!.docs.first.data();
            return ListView(
              children: [
                YoutubePlayer(
                  controller:
                      YoutubePlayerController.fromVideoId(videoId: videoId),
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      video.title,
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                Card.outlined(
                  margin: EdgeInsets.all(16),
                  child: Text(video.description),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: MarkdownBody(
                    data: video.summarizedCaption,
                    selectable: true,
                  ),
                ),
                Card.filled(
                  margin: EdgeInsets.all(16),
                  child: Text('Keywords: ' + video.keywords.join(', ')),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: Text(
                    'Updated: ' + video.updatedAt.toString(),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
