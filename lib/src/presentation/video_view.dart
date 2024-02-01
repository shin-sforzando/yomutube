// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';

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
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  height: 300,
                  child: Image.network(video.maxThumbnailUrl),
                ),
                Container(
                  child: Text(
                    video.title,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  child: SelectableText(
                    video.summarizedCaption,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  child: Text(
                    "Keywords: " + video.keywords.join(', '),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  child: Text(
                    "Updated: " + video.updatedAt.toString(),
                    style: const TextStyle(fontSize: 16),
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
