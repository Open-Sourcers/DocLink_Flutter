import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doc_link_project/core/api/dio_consumer.dart';
import 'package:doc_link_project/core/api/end_points.dart';
import 'package:doc_link_project/core/error/exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleServices {
  final DioConsumer dio = DioConsumer(dio: Dio());

  Future<void> signInWithGoogle() async {
    // ✅ This is your correct Web Client ID (from google-services.json)
    final String webClientId =
        '1098149817464-p8emhtp3glfthkb2obl7ikgqfk7nargp.apps.googleusercontent.com';
    try {
      // Initialize GoogleSignIn with correct Web Client ID
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: [
          'https://www.googleapis.com/auth/userinfo.email',
          'openid',
          'https://www.googleapis.com/auth/userinfo.profile',
        ],
        serverClientId: webClientId,
      );

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        log("⚠️ User cancelled Google Sign-In");
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final idToken = googleAuth.idToken;
      final accessToken = googleAuth.accessToken;

      if (idToken == null) {
        log("❌ idToken is null. Ensure correct serverClientId and SHA keys in Firebase.");
        return;
      }

      log("✅ idToken: $idToken");

      // Optional: Sign in with Firebase
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: accessToken,
        idToken: idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      // Send idToken to your backend API
      final response = await dio.post(
        EndPoints.googleSignIn,
        data: {'idToken': idToken},
      );

      log("✅ Backend response: ${response.body}");
    } on ServerException catch (e) {
      log("❌ Error during Google Sign-In: $e");
    }
  }
}
