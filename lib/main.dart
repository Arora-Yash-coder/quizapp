import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/routes.dart';
import 'package:quizapp/services/firestore.dart';
import 'package:quizapp/services/models.dart';
import 'package:quizapp/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text(
            "error",
            textDirection: TextDirection.ltr,
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider(
              create: (_) => FirestoreService().streamReport(),
              initialData: Report(),
              builder: (context, snapshot) {
                return MaterialApp(
                  routes: appRoutes,
                  theme: appTheme,
                );
              });
        }
        return const Text(
          "loading",
          textDirection: TextDirection.ltr,
        );
      },
    );
  }
}
