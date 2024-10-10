// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "SignUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "authError": MessageLookupByLibrary.simpleMessage(
            "There was an error please try again"),
        "codeVerify": MessageLookupByLibrary.simpleMessage(
            "Please enter 6 digits code that sent to "),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmPass": MessageLookupByLibrary.simpleMessage("Confirm password"),
        "continueWith":
            MessageLookupByLibrary.simpleMessage("Or continue with"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
        "createNewAccount":
            MessageLookupByLibrary.simpleMessage("Create new account"),
        "emailHintTxt": MessageLookupByLibrary.simpleMessage("Email"),
        "emailToReset": MessageLookupByLibrary.simpleMessage(
            "Enter your email to reset your password"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password"),
        "forgetYourPassword":
            MessageLookupByLibrary.simpleMessage("Forgot your password ? "),
        "haveAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "loginHere": MessageLookupByLibrary.simpleMessage("Login here"),
        "loginWelcome": MessageLookupByLibrary.simpleMessage(
            "Welcome back you’ve\nbeen missed!"),
        "passwordHintTxt": MessageLookupByLibrary.simpleMessage("Password"),
        "plesesResetPass":
            MessageLookupByLibrary.simpleMessage("please reset you password"),
        "registerDescription": MessageLookupByLibrary.simpleMessage(
            "Create an account so you can explore all the existing doctors."),
        "resetPass": MessageLookupByLibrary.simpleMessage("Reset password"),
        "resetYoutPassword":
            MessageLookupByLibrary.simpleMessage("Reset your password"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "verifyAccount":
            MessageLookupByLibrary.simpleMessage("Verify your account")
      };
}
