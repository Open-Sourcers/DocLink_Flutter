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

  /// `عربي`
  String get language {
    return Intl.message(
      'عربي',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Welcome broo`
  String get welcome {
    return Intl.message(
      'Welcome broo',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcomeUse {
    return Intl.message(
      'Welcome',
      name: 'welcomeUse',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHintTxt {
    return Intl.message(
      'Email',
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
  String get forgetYourPassword {
    return Intl.message(
      'Forgot your password ? ',
      name: 'forgetYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password ?`
  String get forgetPassword {
    return Intl.message(
      'Forgot password ?',
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

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
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

  /// `Enter your email to reset your password`
  String get emailToReset {
    return Intl.message(
      'Enter your email to reset your password',
      name: 'emailToReset',
      desc: '',
      args: [],
    );
  }

  /// `There was an error please try again`
  String get authError {
    return Intl.message(
      'There was an error please try again',
      name: 'authError',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email adress`
  String get pleaseEnterYouremail {
    return Intl.message(
      'Please enter your email adress',
      name: 'pleaseEnterYouremail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email adress`
  String get pleaseEnterValidemail {
    return Intl.message(
      'Please enter a valid email adress',
      name: 'pleaseEnterValidemail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get enterPassword {
    return Intl.message(
      'Please enter password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `size of password greater than 8 char`
  String get sizeOfPassword {
    return Intl.message(
      'size of password greater than 8 char',
      name: 'sizeOfPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid password \n password should contain at least one upper , lower case , number , special character`
  String get enterValidPassword {
    return Intl.message(
      'Enter valid password \n password should contain at least one upper , lower case , number , special character',
      name: 'enterValidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Be Careful !`
  String get beCareful {
    return Intl.message(
      'Be Careful !',
      name: 'beCareful',
      desc: '',
      args: [],
    );
  }

  /// `Password and confirm password must be the same.`
  String get passwordEqualConfirmPass {
    return Intl.message(
      'Password and confirm password must be the same.',
      name: 'passwordEqualConfirmPass',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Now , You can get the code (******) form your email :\n `
  String get codeWasSentToYourEmail {
    return Intl.message(
      'Now , You can get the code (******) form your email :\n ',
      name: 'codeWasSentToYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Resend Email`
  String get resendEmail {
    return Intl.message(
      'Resend Email',
      name: 'resendEmail',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Verification of email has been sent to your email, check your email`
  String get verificationEmail {
    return Intl.message(
      'Verification of email has been sent to your email, check your email',
      name: 'verificationEmail',
      desc: '',
      args: [],
    );
  }

  /// `You can now add new password`
  String get verification_success {
    return Intl.message(
      'You can now add new password',
      name: 'verification_success',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get prof {
    return Intl.message(
      'Profile',
      name: 'prof',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get myProf {
    return Intl.message(
      'My Profile',
      name: 'myProf',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment {
    return Intl.message(
      'Payment Method',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out now?`
  String get logOutMsg {
    return Intl.message(
      'Are you sure you want to log out now?',
      name: 'logOutMsg',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get schedule {
    return Intl.message(
      'Schedule',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `messages`
  String get message {
    return Intl.message(
      'messages',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a problem?`
  String get haveProblem {
    return Intl.message(
      'Do you have a problem?',
      name: 'haveProblem',
      desc: '',
      args: [],
    );
  }

  /// `Find suitable specialists here..`
  String get findSuitableSpecialists {
    return Intl.message(
      'Find suitable specialists here..',
      name: 'findSuitableSpecialists',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Doctors`
  String get doctors {
    return Intl.message(
      'Doctors',
      name: 'doctors',
      desc: '',
      args: [],
    );
  }

  /// `New Appointment`
  String get newAppointment {
    return Intl.message(
      'New Appointment',
      name: 'newAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Set Appointment`
  String get setAppointment {
    return Intl.message(
      'Set Appointment',
      name: 'setAppointment',
      desc: '',
      args: [],
    );
  }

  /// `Available Time`
  String get availableTime {
    return Intl.message(
      'Available Time',
      name: 'availableTime',
      desc: '',
      args: [],
    );
  }

  /// `Patient Details`
  String get patientDetails {
    return Intl.message(
      'Patient Details',
      name: 'patientDetails',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Write Your Problems`
  String get writeYourProblems {
    return Intl.message(
      'Write Your Problems',
      name: 'writeYourProblems',
      desc: '',
      args: [],
    );
  }

  /// `Yrs`
  String get yrs {
    return Intl.message(
      'Yrs',
      name: 'yrs',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating {
    return Intl.message(
      'Rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `Patients`
  String get patients {
    return Intl.message(
      'Patients',
      name: 'patients',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get experience {
    return Intl.message(
      'Experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `About Doctor`
  String get aboutDoctor {
    return Intl.message(
      'About Doctor',
      name: 'aboutDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Working Time`
  String get workingTime {
    return Intl.message(
      'Working Time',
      name: 'workingTime',
      desc: '',
      args: [],
    );
  }

  /// `Communications`
  String get communications {
    return Intl.message(
      'Communications',
      name: 'communications',
      desc: '',
      args: [],
    );
  }

  /// `Messaging`
  String get messaging {
    return Intl.message(
      'Messaging',
      name: 'messaging',
      desc: '',
      args: [],
    );
  }

  /// `Chat me up , share photo.`
  String get chatMe {
    return Intl.message(
      'Chat me up , share photo.',
      name: 'chatMe',
      desc: '',
      args: [],
    );
  }

  /// `Audio Call`
  String get audioCall {
    return Intl.message(
      'Audio Call',
      name: 'audioCall',
      desc: '',
      args: [],
    );
  }

  /// `Call your doctor directly.`
  String get callDoctor {
    return Intl.message(
      'Call your doctor directly.',
      name: 'callDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Video Call`
  String get videoCall {
    return Intl.message(
      'Video Call',
      name: 'videoCall',
      desc: '',
      args: [],
    );
  }

  /// `See your doctor live.`
  String get seeDoctor {
    return Intl.message(
      'See your doctor live.',
      name: 'seeDoctor',
      desc: '',
      args: [],
    );
  }

  /// `Book Appointment`
  String get bookAppoinment {
    return Intl.message(
      'Book Appointment',
      name: 'bookAppoinment',
      desc: '',
      args: [],
    );
  }

  /// `Specialties`
  String get specialties {
    return Intl.message(
      'Specialties',
      name: 'specialties',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get upcoming {
    return Intl.message(
      'Upcoming',
      name: 'upcoming',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
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
