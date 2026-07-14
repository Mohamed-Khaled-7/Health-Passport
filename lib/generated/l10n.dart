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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Health Passport`
  String get appName {
    return Intl.message('Health Passport', name: 'appName', desc: '', args: []);
  }

  /// `Your medical record is always with you`
  String get appTagline {
    return Intl.message(
      'Your medical record is always with you',
      name: 'appTagline',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enterPhoneNumber {
    return Intl.message(
      'Enter your phone number',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `01X XXXX XXXX`
  String get phoneHint {
    return Intl.message('01X XXXX XXXX', name: 'phoneHint', desc: '', args: []);
  }

  /// `Send Verification Code`
  String get sendVerificationCode {
    return Intl.message(
      'Send Verification Code',
      name: 'sendVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `+20`
  String get countryCode {
    return Intl.message('+20', name: 'countryCode', desc: '', args: []);
  }

  /// `Change Phone Number`
  String get changePhoneNumber {
    return Intl.message(
      'Change Phone Number',
      name: 'changePhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get verificationCode {
    return Intl.message(
      'Verification Code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `A 4-digit verification code has been sent `
  String get verificationCodeSent {
    return Intl.message(
      'A 4-digit verification code has been sent ',
      name: 'verificationCodeSent',
      desc: '',
      args: [],
    );
  }

  /// `Confirm & Login`
  String get confirmAndLogin {
    return Intl.message(
      'Confirm & Login',
      name: 'confirmAndLogin',
      desc: '',
      args: [],
    );
  }

  /// `Invalid OTP code`
  String get invalidOtpError {
    return Intl.message(
      'Invalid OTP code',
      name: 'invalidOtpError',
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
