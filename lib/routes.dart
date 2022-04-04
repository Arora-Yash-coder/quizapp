import 'dart:js';

import 'about/about.dart';
import 'topics/topics.dart';
import 'login/login.dart';
import 'profile/profile.dart';
import 'home/home.dart';

var appRoutes = {
  '/': (context) => HomePage(),
  '/login': (context) => LoginPage(),
  '/about': (context) => AboutPage(),
  '/profile': (context) => ProfilePage(),
  '/topics': (context) => TopicsPage(),
};
