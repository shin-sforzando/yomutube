// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

// import 'package:openapi/api.dart';

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

    // FirebaseFirestore.instance
    //     .collection('videos')
    //     .orderBy('updated_at', descending: false)
    //     .startAt([TargetDateTimestamp])
    //     .endAt([nextDateTimestamp])
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //       querySnapshot.docs.forEach((doc) {
    //         debugPrint(doc['id'] + ':' + doc['updated_at'].toString());
    //         debugPrint(doc.toString());
    //       });
    //     });
    return Scaffold(
      appBar: AppBar(title: Text(targetDateString)),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance
            .collection('videos')
            .orderBy('updated_at', descending: false)
            .startAt([TargetDateTimestamp]).endAt([nextDateTimestamp]).get(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return ListTile(
                  title: Text(data['id']),
                  subtitle: Text(data['updated_at'].toString()),
                );
              }).toList(),
            );
          }

          return const Text('loading');
        },
      ),
    );
  }
}
