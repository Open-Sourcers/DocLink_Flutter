import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final user = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => user.signIn();
}
