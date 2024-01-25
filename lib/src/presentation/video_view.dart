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
            return Card(
              child: Column(
                children: [
                  Image.network(video.maxThumbnailUrl),
                  ListTile(
                    leading: Text(video.id),
                    title: Text(video.title),
                    subtitle: Text(video.summarizedCaption),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
