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
    String targetDate =
        dateLikeString ?? DateFormat('yyyy-MM-dd').format(DateTime.now());
    return Scaffold(
        appBar: AppBar(
          title: Text(targetDate),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint(FirebaseFirestore.instance.databaseURL);
                },
                icon: const Icon(Icons.settings))
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
