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

  /// `A 6-digit verification code has been sent `
  String get verificationCodeSent {
    return Intl.message(
      'A 6-digit verification code has been sent ',
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

  /// `Please enter your phone number`
  String get phoneNumberRequired {
    return Intl.message(
      'Please enter your phone number',
      name: 'phoneNumberRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get invalidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Please try again later`
  String get tooManyRequests {
    return Intl.message(
      'Too many requests. Please try again later',
      name: 'tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `The SMS quota has been exceeded. Please try again later`
  String get quotaExceeded {
    return Intl.message(
      'The SMS quota has been exceeded. Please try again later',
      name: 'quotaExceeded',
      desc: '',
      args: [],
    );
  }

  /// `Phone authentication is currently unavailable`
  String get operationNotAllowed {
    return Intl.message(
      'Phone authentication is currently unavailable',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `The verification code is invalid`
  String get invalidVerificationCode {
    return Intl.message(
      'The verification code is invalid',
      name: 'invalidVerificationCode',
      desc: '',
      args: [],
    );
  }

  /// `The verification session is invalid. Please try again`
  String get invalidVerificationId {
    return Intl.message(
      'The verification session is invalid. Please try again',
      name: 'invalidVerificationId',
      desc: '',
      args: [],
    );
  }

  /// `The verification code has expired. Please request a new code`
  String get sessionExpired {
    return Intl.message(
      'The verification code has expired. Please request a new code',
      name: 'sessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again`
  String get networkRequestFailed {
    return Intl.message(
      'Please check your internet connection and try again',
      name: 'networkRequestFailed',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred. Please try again`
  String get unexpectedError {
    return Intl.message(
      'An unexpected error occurred. Please try again',
      name: 'unexpectedError',
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
