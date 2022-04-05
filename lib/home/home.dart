import 'package:flutter/material.dart';
import 'package:quizapp/topics/topics.dart';
import 'package:quizapp/login/login.dart';
import 'package:quizapp/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        } else if (snapshot.hasError) {
          return const Text('error');
        } else if (snapshot.hasData) {
          return const TopicsPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
