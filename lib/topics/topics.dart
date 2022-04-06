import 'package:flutter/material.dart';
import 'package:quizapp/services/firestore.dart';
import 'package:quizapp/services/models.dart';
import 'package:quizapp/shared/shared.dart';

import 'package:quizapp/services/auth.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
      future: FirestoreService().getTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ErrorMessage(
                  message: snapshot.error.toString(),
                ),
                ElevatedButton(
                  child: const Text('Sign Out'),
                  onPressed: () async {
                    await AuthService().signOut();
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/', (route) => false);
                  },
                ),
              ],
            ),
          );
        } else if (snapshot.hasData) {
          var topics = snapshot.data!;
          return Scaffold(
            appBar: AppBar(),
            bottomNavigationBar: const BottomNavBar(),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: topics.map((topic) => Text(topic.title)).toList(),
            ),
          );
        } else {
          return const Text("No Data found in firestore");
        }
      },
    );
  }
}
