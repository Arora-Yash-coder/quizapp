import 'package:flutter/material.dart';

// The about page for the project
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 16,
          ),
          child: Text(
              'Welcome to the CrossPlatform Quiz App, your ultimate destination for testing your knowledge on cross-platform technologies! Whether you\'re a seasoned developer or just starting your journey into the world of technology, our quiz app is designed to challenge and educate users on the latest trends and innovations in cross-platform development.'),
        ));
  }
}
