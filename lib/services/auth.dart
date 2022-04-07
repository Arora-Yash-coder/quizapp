import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Used to connect with the server
class AuthService {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

  // Login anonymously
  Future<void> anonLogin() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      // Handle Error
    }
  }

  // Sign Out of the application
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  // Login using Google
  Future<void> googleLogin() async {
    try {
      final googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) return;
      final googleAuth = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(authCredential);
    } on FirebaseAuth catch (e) {
      // Handle Error
    }
  }
}
