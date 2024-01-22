// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class VideoListView extends StatelessWidget {
  final String? dateLikeString;
  VideoListView({super.key, this.dateLikeString});

  @override
  Widget build(BuildContext context) {
    String targetDateString = dateLikeString ?? DateTime.now().toString();
    targetDateString =
        DateFormat('yyyy-MM-dd').format(DateTime.parse(targetDateString));
    DateTime targetDate = DateTime.parse(targetDateString);
    DateTime nextDate = targetDate.add(const Duration(days: 1));
    Timestamp TargetDateTimestamp = Timestamp.fromDate(targetDate);
    Timestamp nextDateTimestamp = Timestamp.fromDate(nextDate);

    return Scaffold(
      appBar: AppBar(
        title: Text("YomuTube",
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
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection('videos')
            .orderBy('updated_at', descending: false)
            .startAt([TargetDateTimestamp]).endAt([nextDateTimestamp]).get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong!');
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Ink.image(
                            image: Image.network(data['snippet']['thumbnails']
                                    ['standard']['url'])
                                .image,
                            fit: BoxFit.cover,
                            height: 120),
                        Text(data['snippet']['title'],
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ],
                    ));
              }).toList(),
            );
          }

          return Container(
              alignment: Alignment.center,
              child: const CircularProgressIndicator());
        },
      ),
    );
  }
}
