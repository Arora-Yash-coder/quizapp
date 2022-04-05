import 'package:flutter/material.dart';
import 'package:quizapp/shared/shared.dart';

class TopicsPage extends StatelessWidget {
  const TopicsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'about',
            style: Theme.of(context).textTheme.button,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
        ),
      ),
    );
  }
}
