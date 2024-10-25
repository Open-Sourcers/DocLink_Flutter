import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static const String clientId =
      "579857235514-2hjss960qjro1kbka6822h52lu2sfhsl.apps.googleusercontent.com";
  static final user = GoogleSignIn(
    clientId: clientId,
    scopes: [
      'https://www.googleapis.com/auth/userinfo.email',
      'openid',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
  );
  static Future<void> signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await user.signIn();
    if (kDebugMode) {
      print(googleUser);
    }
    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    if (kDebugMode) {
      print(googleAuth);
    }
  }
}
