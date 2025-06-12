import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleServices {
  final _auth = FirebaseAuth.instance;
  Future<UserCredential?> loginWithGoogle() async {
    log('loginWithGoogle');
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();

      final googleUser = await googleSignIn.signIn();

      final googleAuth = await googleUser?.authentication;

      if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        final userCredential = await _auth.signInWithCredential(credential);
        log(userCredential.toString());
        return userCredential;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
