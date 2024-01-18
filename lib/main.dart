// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluro/fluro.dart';

// Project imports:
import 'package:yomutube/firebase_options.dart';
import 'package:yomutube/src/app.dart';
import 'package:yomutube/src/router/routes.dart';

void main() async {
  // Router configuration
  final router = FluroRouter();
  Routes.configureRoutes(router);
  MyApp.router = router;

  // Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  if (kDebugMode) {
    FirebaseFirestore.setLoggingEnabled(true);
    try {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  runApp(const MyApp());
}
