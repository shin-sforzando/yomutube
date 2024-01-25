// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

// Project imports:
import 'package:yomutube/src/domain/model/video.dart';

class VideoListView extends StatefulWidget {
  final String? dateLikeString;

  VideoListView({Key? key, this.dateLikeString}) : super(key: key);

  @override
  _VideoListViewState createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  late String targetDateString;
  late DateTime targetDate;

  @override
  void initState() {
    super.initState();
    targetDateString = widget.dateLikeString ?? DateTime.now().toString();
    targetDateString =
        DateFormat('yyyy-MM-dd').format(DateTime.parse(targetDateString));
    targetDate = DateTime.parse(targetDateString);
  }

  Future<QuerySnapshot<Video>> _getVideos() async {
    DateTime nextDate = targetDate.add(const Duration(days: 1));
    Timestamp targetTimestamp = Timestamp.fromDate(targetDate);
    Timestamp nextDateTimestamp = Timestamp.fromDate(nextDate);

    return FirebaseFirestore.instance
        .collection('videos')
        .orderBy('updated_at', descending: false)
        .startAt([targetTimestamp])
        .endAt([nextDateTimestamp])
        .withConverter<Video>(
            fromFirestore: (snapshot, _) => Video.fromMap(snapshot.data()!),
            toFirestore: (video, _) => {})
        .get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YomuTube',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red)),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () {
              showDatePicker(
                context: context,
                initialDate: targetDate,
                firstDate: DateTime(2023),
                lastDate: DateTime.now(),
              ).then((value) {
                if (value != null) {
                  Navigator.pushReplacementNamed(context,
                      '/videos/' + DateFormat('yyyy-MM-dd').format(value));
                }
              });
            },
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48),
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              targetDateString,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: FutureBuilder<QuerySnapshot<Video>>(
        future: _getVideos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final videos = snapshot.data!.docs.map((e) => e.data()).toList();
            return ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final video = videos[index];
                return ListTile(
                  isThreeLine: true,
                  leading: Image.network(video.maxThumbnailUrl),
                  title: Text(video.title),
                  subtitle: Text(video.updatedAt.toString()),
                  onTap: () {
                    Navigator.pushNamed(context, '/video/' + video.id);
                  },
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
