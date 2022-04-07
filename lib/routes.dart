import 'about/about.dart';
import 'topics/topics.dart';
import 'login/login.dart';
import 'profile/profile.dart';
import 'home/home.dart';

// All the routes used in the project
var appRoutes = {
  '/': (context) => const HomePage(),
  '/login': (context) => const LoginPage(),
  '/about': (context) => const AboutPage(),
  '/profile': (context) => const ProfilePage(),
  '/topics': (context) => const TopicsPage(),
};
