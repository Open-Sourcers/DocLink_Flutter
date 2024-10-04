// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email :`
  String get emailHintTxt {
    return Intl.message(
      'Email :',
      name: 'emailHintTxt',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordHintTxt {
    return Intl.message(
      'Password',
      name: 'passwordHintTxt',
      desc: '',
      args: [],
    );
  }

  /// `Login here`
  String get loginHere {
    return Intl.message(
      'Login here',
      name: 'loginHere',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back you’ve\nbeen missed!`
  String get loginWelcome {
    return Intl.message(
      'Welcome back you’ve\nbeen missed!',
      name: 'loginWelcome',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password ? `
  String get forgetPassword {
    return Intl.message(
      'Forgot your password ? ',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Create new account`
  String get createNewAccount {
    return Intl.message(
      'Create new account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get continueWith {
    return Intl.message(
      'Or continue with',
      name: 'continueWith',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create an account so you can explore all the existing doctors.`
  String get registerDescription {
    return Intl.message(
      'Create an account so you can explore all the existing doctors.',
      name: 'registerDescription',
      desc: '',
      args: [],
    );
  }

  /// `First Name :`
  String get firstName {
    return Intl.message(
      'First Name :',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name :`
  String get lastName {
    return Intl.message(
      'Last Name :',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get SignUp {
    return Intl.message(
      'Sign up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account`
  String get haveAccount {
    return Intl.message(
      'Already have an account',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verify your account`
  String get verifyAccount {
    return Intl.message(
      'Verify your account',
      name: 'verifyAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter 6 digits code that sent to `
  String get codeVerify {
    return Intl.message(
      'Please enter 6 digits code that sent to ',
      name: 'codeVerify',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get resetYoutPassword {
    return Intl.message(
      'Reset your password',
      name: 'resetYoutPassword',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get resetPass {
    return Intl.message(
      'Reset password',
      name: 'resetPass',
      desc: '',
      args: [],
    );
  }

  /// `please reset you password`
  String get plesesResetPass {
    return Intl.message(
      'please reset you password',
      name: 'plesesResetPass',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPass {
    return Intl.message(
      'Confirm password',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
