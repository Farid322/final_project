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

  /// `Doctor`
  String get LogoD {
    return Intl.message(
      'Doctor',
      name: 'LogoD',
      desc: '',
      args: [],
    );
  }

  /// `Patient`
  String get LogoP {
    return Intl.message(
      'Patient',
      name: 'LogoP',
      desc: '',
      args: [],
    );
  }

  /// `Log-In`
  String get loginP {
    return Intl.message(
      'Log-In',
      name: 'loginP',
      desc: '',
      args: [],
    );
  }

  /// `Sign-Up`
  String get SignupP {
    return Intl.message(
      'Sign-Up',
      name: 'SignupP',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get GetStarted {
    return Intl.message(
      'Get started',
      name: 'GetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Continue Without Registeration`
  String get ContinueWithoutRegisteration {
    return Intl.message(
      'Continue Without Registeration',
      name: 'ContinueWithoutRegisteration',
      desc: '',
      args: [],
    );
  }

  /// `Hemodialysis is a machine filters your blood through a dialyzer, also known as an artificial kidney, with built-in safety checks to be sure the process is safe and effective. Home and in-center hemodialysis machines are very similar in function, though the home machine is much smaller.`
  String get aboutHemo {
    return Intl.message(
      'Hemodialysis is a machine filters your blood through a dialyzer, also known as an artificial kidney, with built-in safety checks to be sure the process is safe and effective. Home and in-center hemodialysis machines are very similar in function, though the home machine is much smaller.',
      name: 'aboutHemo',
      desc: '',
      args: [],
    );
  }

  /// `About\n`
  String get about {
    return Intl.message(
      'About\n',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Hemodialysis: is the most common type of dialysis and the one most people are aware of. `
  String get Hemodialysis {
    return Intl.message(
      'Hemodialysis: is the most common type of dialysis and the one most people are aware of. ',
      name: 'Hemodialysis',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Hemodialysis`
  String get Hemo {
    return Intl.message(
      'Hemodialysis',
      name: 'Hemo',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createaccount {
    return Intl.message(
      'Create account',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get username {
    return Intl.message(
      'User Name',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailaddress {
    return Intl.message(
      'Email Address',
      name: 'emailaddress',
      desc: '',
      args: [],
    );
  }

  /// `Country Code`
  String get Countrycode {
    return Intl.message(
      'Country Code',
      name: 'Countrycode',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get Mobilenumber {
    return Intl.message(
      'Mobile Number',
      name: 'Mobilenumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get ConfirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'ConfirmPassword',
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

  /// `Gender`
  String get Gender {
    return Intl.message(
      'Gender',
      name: 'Gender',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get Female {
    return Intl.message(
      'Female',
      name: 'Female',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get Male {
    return Intl.message(
      'Male',
      name: 'Male',
      desc: '',
      args: [],
    );
  }

  /// `Barcode`
  String get Barcode {
    return Intl.message(
      'Barcode',
      name: 'Barcode',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get Next {
    return Intl.message(
      'Next',
      name: 'Next',
      desc: '',
      args: [],
    );
  }

  /// `'Your User Name`
  String get YourUsername {
    return Intl.message(
      '\'Your User Name',
      name: 'YourUsername',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get YourEmail {
    return Intl.message(
      'Your Email',
      name: 'YourEmail',
      desc: '',
      args: [],
    );
  }

  /// `+012`
  String get code {
    return Intl.message(
      '+012',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `1024165373`
  String get number {
    return Intl.message(
      '1024165373',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Your Password`
  String get YourPassword {
    return Intl.message(
      'Your Password',
      name: 'YourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Your Password`
  String get ConfirmYourPassword {
    return Intl.message(
      'Confirm Your Password',
      name: 'ConfirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your Age`
  String get YourAge {
    return Intl.message(
      'Your Age',
      name: 'YourAge',
      desc: '',
      args: [],
    );
  }

  /// `Your Barcode`
  String get yourbarcode {
    return Intl.message(
      'Your Barcode',
      name: 'yourbarcode',
      desc: '',
      args: [],
    );
  }

  /// `Please answer those Questions To get more details ..`
  String get Pleaseanswer {
    return Intl.message(
      'Please answer those Questions To get more details ..',
      name: 'Pleaseanswer',
      desc: '',
      args: [],
    );
  }

  /// `'Do you suffer from any disease?`
  String get Doyousuffer {
    return Intl.message(
      '\'Do you suffer from any disease?',
      name: 'Doyousuffer',
      desc: '',
      args: [],
    );
  }

  /// `ex. I suffer from diabetes`
  String get ex {
    return Intl.message(
      'ex. I suffer from diabetes',
      name: 'ex',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get Donthave {
    return Intl.message(
      'Don’t have an account?',
      name: 'Donthave',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Register with Facebook`
  String get RegisterwithFacebook {
    return Intl.message(
      'Register with Facebook',
      name: 'RegisterwithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Register with Google`
  String get Registerwithgoogle {
    return Intl.message(
      'Register with Google',
      name: 'Registerwithgoogle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signin {
    return Intl.message(
      'Sign In',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get Forgetpassword {
    return Intl.message(
      'Forget password?',
      name: 'Forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get Rememberme {
    return Intl.message(
      'Remember me',
      name: 'Rememberme',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Log-In' key

  /// `Login with Google`
  String get LoginwithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'LoginwithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get LoginwithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'LoginwithFacebook',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Don’thaveanaccount?' key

  /// `Hello, welcome back to our account`
  String get Hellowelcomebacktoouraccount {
    return Intl.message(
      'Hello, welcome back to our account',
      name: 'Hellowelcomebacktoouraccount',
      desc: '',
      args: [],
    );
  }

  /// `Please choose way from those options to rest your password`
  String get Pleasechoose {
    return Intl.message(
      'Please choose way from those options to rest your password',
      name: 'Pleasechoose',
      desc: '',
      args: [],
    );
  }

  /// `Send an email`
  String get Sendanemail {
    return Intl.message(
      'Send an email',
      name: 'Sendanemail',
      desc: '',
      args: [],
    );
  }

  /// `Remember password?`
  String get Rememberpassword {
    return Intl.message(
      'Remember password?',
      name: 'Rememberpassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t worry! It happens. Please enter the email associated with your account.`
  String get Dontworry {
    return Intl.message(
      'Don’t worry! It happens. Please enter the email associated with your account.',
      name: 'Dontworry',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get SendCode {
    return Intl.message(
      'Send Code',
      name: 'SendCode',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Email`
  String get CheckYourEmail {
    return Intl.message(
      'Check Your Email',
      name: 'CheckYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `We’ve sent a code to `
  String get Wevesent {
    return Intl.message(
      'We’ve sent a code to ',
      name: 'Wevesent',
      desc: '',
      args: [],
    );
  }

  /// `I didn’t receive a code`
  String get Ididnt {
    return Intl.message(
      'I didn’t receive a code',
      name: 'Ididnt',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get Resend {
    return Intl.message(
      'Resend',
      name: 'Resend',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get Reset {
    return Intl.message(
      'Reset your password',
      name: 'Reset',
      desc: '',
      args: [],
    );
  }

  /// `Please type something you’ll remember`
  String get pleasetype {
    return Intl.message(
      'Please type something you’ll remember',
      name: 'pleasetype',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get Newpassword {
    return Intl.message(
      'New password',
      name: 'Newpassword',
      desc: '',
      args: [],
    );
  }

  /// `must be 8 characters`
  String get mustbe8characters {
    return Intl.message(
      'must be 8 characters',
      name: 'mustbe8characters',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get Confirm {
    return Intl.message(
      'Confirm new password',
      name: 'Confirm',
      desc: '',
      args: [],
    );
  }

  /// `repeat password`
  String get repeatpassword {
    return Intl.message(
      'repeat password',
      name: 'repeatpassword',
      desc: '',
      args: [],
    );
  }

  /// `Rest password`
  String get Restpassword {
    return Intl.message(
      'Rest password',
      name: 'Restpassword',
      desc: '',
      args: [],
    );
  }

  /// `Password changed`
  String get Passwordchanged {
    return Intl.message(
      'Password changed',
      name: 'Passwordchanged',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been changed successfully`
  String get yourpassword {
    return Intl.message(
      'Your password has been changed successfully',
      name: 'yourpassword',
      desc: '',
      args: [],
    );
  }

  /// `Go back to login`
  String get Gobacktologin {
    return Intl.message(
      'Go back to login',
      name: 'Gobacktologin',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enteryouremail {
    return Intl.message(
      'Enter Your Email',
      name: 'enteryouremail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get enteryourpassword {
    return Intl.message(
      'Enter Your Password',
      name: 'enteryourpassword',
      desc: '',
      args: [],
    );
  }

  /// `Hi,Welcome Back,`
  String get HiWelcomeBack {
    return Intl.message(
      'Hi,Welcome Back,',
      name: 'HiWelcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Muhammed`
  String get Muhammed {
    return Intl.message(
      'Muhammed',
      name: 'Muhammed',
      desc: '',
      args: [],
    );
  }

  /// `Your session at 2:00 pm`
  String get yoursession {
    return Intl.message(
      'Your session at 2:00 pm',
      name: 'yoursession',
      desc: '',
      args: [],
    );
  }

  /// `Total sessions`
  String get Totalsessions {
    return Intl.message(
      'Total sessions',
      name: 'Totalsessions',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get Completed {
    return Intl.message(
      'Completed',
      name: 'Completed',
      desc: '',
      args: [],
    );
  }

  /// `Delayed`
  String get Delayed {
    return Intl.message(
      'Delayed',
      name: 'Delayed',
      desc: '',
      args: [],
    );
  }

  /// `Min hours`
  String get Minhours {
    return Intl.message(
      'Min hours',
      name: 'Minhours',
      desc: '',
      args: [],
    );
  }

  /// `Medical Test`
  String get MedicalTests {
    return Intl.message(
      'Medical Test',
      name: 'MedicalTests',
      desc: '',
      args: [],
    );
  }

  /// ` Sessions`
  String get Sessions {
    return Intl.message(
      ' Sessions',
      name: 'Sessions',
      desc: '',
      args: [],
    );
  }

  /// `My Medicine`
  String get Mymedicine {
    return Intl.message(
      'My Medicine',
      name: 'Mymedicine',
      desc: '',
      args: [],
    );
  }

  /// `My Doctor`
  String get MyDoctor {
    return Intl.message(
      'My Doctor',
      name: 'MyDoctor',
      desc: '',
      args: [],
    );
  }

  /// `12 hours`
  String get hours {
    return Intl.message(
      '12 hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth`
  String get Bluetooth {
    return Intl.message(
      'Bluetooth',
      name: 'Bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `We aim to save time by using dialysis belt: Using programming technology and artificial intelligence with easy application which the patient can follow up with the process of dialysis and his vital sign, please, turn on your bluetooth to let us help you. `
  String get BluetoothInfo {
    return Intl.message(
      'We aim to save time by using dialysis belt: Using programming technology and artificial intelligence with easy application which the patient can follow up with the process of dialysis and his vital sign, please, turn on your bluetooth to let us help you. ',
      name: 'BluetoothInfo',
      desc: '',
      args: [],
    );
  }

  /// `Please answer those Questions .To get more details ..`
  String get PleaseAnswer {
    return Intl.message(
      'Please answer those Questions .To get more details ..',
      name: 'PleaseAnswer',
      desc: '',
      args: [],
    );
  }

  /// `What is your pressure rate?`
  String get pressure {
    return Intl.message(
      'What is your pressure rate?',
      name: 'pressure',
      desc: '',
      args: [],
    );
  }

  /// `What is your temperature?`
  String get temperature {
    return Intl.message(
      'What is your temperature?',
      name: 'temperature',
      desc: '',
      args: [],
    );
  }

  /// `What is your weight ?`
  String get waight {
    return Intl.message(
      'What is your weight ?',
      name: 'waight',
      desc: '',
      args: [],
    );
  }

  /// `Your Result is `
  String get YourResultis {
    return Intl.message(
      'Your Result is ',
      name: 'YourResultis',
      desc: '',
      args: [],
    );
  }

  /// `You are ready to start session`
  String get Acceptedresult {
    return Intl.message(
      'You are ready to start session',
      name: 'Acceptedresult',
      desc: '',
      args: [],
    );
  }

  /// `You can’t start the session, call the doctor please.`
  String get refuseresult {
    return Intl.message(
      'You can’t start the session, call the doctor please.',
      name: 'refuseresult',
      desc: '',
      args: [],
    );
  }

  /// `Test`
  String get Test {
    return Intl.message(
      'Test',
      name: 'Test',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get Date {
    return Intl.message(
      'Date',
      name: 'Date',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get Time {
    return Intl.message(
      'Time',
      name: 'Time',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get View {
    return Intl.message(
      'View',
      name: 'View',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get Upload {
    return Intl.message(
      'Upload',
      name: 'Upload',
      desc: '',
      args: [],
    );
  }

  /// `You need to upload your`
  String get Youneed {
    return Intl.message(
      'You need to upload your',
      name: 'Youneed',
      desc: '',
      args: [],
    );
  }

  /// `Medical Test Result`
  String get MedicalTestResult {
    return Intl.message(
      'Medical Test Result',
      name: 'MedicalTestResult',
      desc: '',
      args: [],
    );
  }

  /// `To can read your medical test, you must upload your medical test, So we put to you some options to can upload test`
  String get ToCan {
    return Intl.message(
      'To can read your medical test, you must upload your medical test, So we put to you some options to can upload test',
      name: 'ToCan',
      desc: '',
      args: [],
    );
  }

  /// `To upload your test`
  String get Toupload {
    return Intl.message(
      'To upload your test',
      name: 'Toupload',
      desc: '',
      args: [],
    );
  }

  /// `Use camera`
  String get Usecamera {
    return Intl.message(
      'Use camera',
      name: 'Usecamera',
      desc: '',
      args: [],
    );
  }

  /// `Upload file / photo`
  String get UploadF {
    return Intl.message(
      'Upload file / photo',
      name: 'UploadF',
      desc: '',
      args: [],
    );
  }

  /// `Med 1`
  String get Med1 {
    return Intl.message(
      'Med 1',
      name: 'Med1',
      desc: '',
      args: [],
    );
  }

  /// `Med 2`
  String get Med2 {
    return Intl.message(
      'Med 2',
      name: 'Med2',
      desc: '',
      args: [],
    );
  }

  /// `Med 3`
  String get Med3 {
    return Intl.message(
      'Med 3',
      name: 'Med3',
      desc: '',
      args: [],
    );
  }

  /// `Medicine`
  String get Medicine {
    return Intl.message(
      'Medicine',
      name: 'Medicine',
      desc: '',
      args: [],
    );
  }

  /// `Session 1`
  String get Session1 {
    return Intl.message(
      'Session 1',
      name: 'Session1',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Session 2' key

  /// `Notifications`
  String get Notifications {
    return Intl.message(
      'Notifications',
      name: 'Notifications',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get Today {
    return Intl.message(
      'Today',
      name: 'Today',
      desc: '',
      args: [],
    );
  }

  /// `Remind For Serial`
  String get Remind {
    return Intl.message(
      'Remind For Serial',
      name: 'Remind',
      desc: '',
      args: [],
    );
  }

  /// `It is a long established fact that a reader and will be distracted.`
  String get itis {
    return Intl.message(
      'It is a long established fact that a reader and will be distracted.',
      name: 'itis',
      desc: '',
      args: [],
    );
  }

  /// `Notification From Dr. Istiak`
  String get NotificationFromDrIstiak {
    return Intl.message(
      'Notification From Dr. Istiak',
      name: 'NotificationFromDrIstiak',
      desc: '',
      args: [],
    );
  }

  /// `I accepted your add`
  String get Iacceptedyouradd {
    return Intl.message(
      'I accepted your add',
      name: 'Iacceptedyouradd',
      desc: '',
      args: [],
    );
  }

  /// `Notification From Dr. Shofik`
  String get NotificationFromDrShofik {
    return Intl.message(
      'Notification From Dr. Shofik',
      name: 'NotificationFromDrShofik',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get Yesterday {
    return Intl.message(
      'Yesterday',
      name: 'Yesterday',
      desc: '',
      args: [],
    );
  }

  /// `11 Min`
  String get Min {
    return Intl.message(
      '11 Min',
      name: 'Min',
      desc: '',
      args: [],
    );
  }

  /// `5 Hours`
  String get Hour {
    return Intl.message(
      '5 Hours',
      name: 'Hour',
      desc: '',
      args: [],
    );
  }

  /// `2 Hours`
  String get hour2 {
    return Intl.message(
      '2 Hours',
      name: 'hour2',
      desc: '',
      args: [],
    );
  }

  /// `Messenger`
  String get Messenger {
    return Intl.message(
      'Messenger',
      name: 'Messenger',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get Setting {
    return Intl.message(
      'Setting',
      name: 'Setting',
      desc: '',
      args: [],
    );
  }

  /// `Account info`
  String get Accountinfo {
    return Intl.message(
      'Account info',
      name: 'Accountinfo',
      desc: '',
      args: [],
    );
  }

  /// `name, age, gender, ...etc`
  String get nameagegender {
    return Intl.message(
      'name, age, gender, ...etc',
      name: 'nameagegender',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get Privacy {
    return Intl.message(
      'Privacy',
      name: 'Privacy',
      desc: '',
      args: [],
    );
  }

  /// `email, password, mobile number`
  String get emailpasswordmobilenumber {
    return Intl.message(
      'email, password, mobile number',
      name: 'emailpasswordmobilenumber',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get Aboutus {
    return Intl.message(
      'About us',
      name: 'Aboutus',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get Logout {
    return Intl.message(
      'Logout',
      name: 'Logout',
      desc: '',
      args: [],
    );
  }

  /// `Chronic kidney disease (CKD) means your   kidneys are damaged and losing their ability to keep you healthy by filtering your blood. In the early stages of the disease, most people do not have symptoms. `
  String get Chronic {
    return Intl.message(
      'Chronic kidney disease (CKD) means your   kidneys are damaged and losing their ability to keep you healthy by filtering your blood. In the early stages of the disease, most people do not have symptoms. ',
      name: 'Chronic',
      desc: '',
      args: [],
    );
  }

  /// `But as kidney disease gets worse, wastes can build up in your blood and make you feel sick. You may develop other problems, like high blood pressure, anemia, weak bones, poor nutritional health, and nerve damage.`
  String get But {
    return Intl.message(
      'But as kidney disease gets worse, wastes can build up in your blood and make you feel sick. You may develop other problems, like high blood pressure, anemia, weak bones, poor nutritional health, and nerve damage.',
      name: 'But',
      desc: '',
      args: [],
    );
  }

  /// `Because kidneys are vital to so many of the body's functions, kidney disease also increases your risk of having heart and blood vessel disease`
  String get Because {
    return Intl.message(
      'Because kidneys are vital to so many of the body\'s functions, kidney disease also increases your risk of having heart and blood vessel disease',
      name: 'Because',
      desc: '',
      args: [],
    );
  }

  /// `03 August 2020`
  String get august {
    return Intl.message(
      '03 August 2020',
      name: 'august',
      desc: '',
      args: [],
    );
  }

  /// `2.20 Pm`
  String get pm {
    return Intl.message(
      '2.20 Pm',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `Next Session at 2:00 pm`
  String get NextSession {
    return Intl.message(
      'Next Session at 2:00 pm',
      name: 'NextSession',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'My Medicine' key

  /// `confirm`
  String get confirm {
    return Intl.message(
      'confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `location`
  String get location {
    return Intl.message(
      'location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Location`
  String get enteryourlocation {
    return Intl.message(
      'Enter Your Location',
      name: 'enteryourlocation',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get Experience {
    return Intl.message(
      'Experience',
      name: 'Experience',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Experience`
  String get Enteryourexpr {
    return Intl.message(
      'Enter Your Experience',
      name: 'Enteryourexpr',
      desc: '',
      args: [],
    );
  }

  /// `Your ID`
  String get IDY {
    return Intl.message(
      'Your ID',
      name: 'IDY',
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
