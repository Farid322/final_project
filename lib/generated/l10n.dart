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
