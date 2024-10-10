import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final user = GoogleSignIn();
  static Future<void> signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await user.signIn();

    GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    print("idToken : ${googleAuth.idToken}");
  }
}
