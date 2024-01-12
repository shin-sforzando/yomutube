// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class VideoListView extends StatelessWidget {
  final String? dateLikeString;
  const VideoListView({super.key, this.dateLikeString});

  @override
  Widget build(BuildContext context) {
    String targetDate = dateLikeString ?? DateTime.now().toString();
    targetDate = DateFormat('yyyy-MM-dd').format(DateTime.parse(targetDate));

    return Scaffold(
        appBar: AppBar(
          title: Text(targetDate),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint(FirebaseFirestore.instance.databaseURL);
                },
                icon: const Icon(Icons.info))
          ],
        ),
        body: ListView(
          children: const [
            ListTile(
              title: Text('test'),
              subtitle: Text('test'),
            )
          ],
        ));
  }
}
