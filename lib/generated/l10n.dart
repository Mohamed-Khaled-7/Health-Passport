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

  /// `We'll use this to build your health record and show you relevant alerts`
  String get onboardingBasicInfoSubtitle {
    return Intl.message(
      'We\'ll use this to build your health record and show you relevant alerts',
      name: 'onboardingBasicInfoSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get onboardingFullNameLabel {
    return Intl.message(
      'Full Name',
      name: 'onboardingFullNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Mohamed Khaled`
  String get onboardingFullNameHint {
    return Intl.message(
      'e.g. Mohamed Khaled',
      name: 'onboardingFullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get onboardingAgeLabel {
    return Intl.message('Age', name: 'onboardingAgeLabel', desc: '', args: []);
  }

  /// `e.g. 24`
  String get onboardingAgeHint {
    return Intl.message(
      'e.g. 24',
      name: 'onboardingAgeHint',
      desc: '',
      args: [],
    );
  }

  /// `Blood Type`
  String get onboardingBloodTypeLabel {
    return Intl.message(
      'Blood Type',
      name: 'onboardingBloodTypeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Select blood type`
  String get onboardingBloodTypeHint {
    return Intl.message(
      'Select blood type',
      name: 'onboardingBloodTypeHint',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a chronic condition?`
  String get onboardingChronicDiseaseLabel {
    return Intl.message(
      'Do you have a chronic condition?',
      name: 'onboardingChronicDiseaseLabel',
      desc: '',
      args: [],
    );
  }

  /// `Select chronic condition`
  String get onboardingChronicDiseaseHint {
    return Intl.message(
      'Select chronic condition',
      name: 'onboardingChronicDiseaseHint',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get onboardingChronicNoneOption {
    return Intl.message(
      'None',
      name: 'onboardingChronicNoneOption',
      desc: '',
      args: [],
    );
  }

  /// `Diabetes`
  String get onboardingChronicDiabetesOption {
    return Intl.message(
      'Diabetes',
      name: 'onboardingChronicDiabetesOption',
      desc: '',
      args: [],
    );
  }

  /// `Blood Pressure`
  String get onboardingChronicBloodPressureOption {
    return Intl.message(
      'Blood Pressure',
      name: 'onboardingChronicBloodPressureOption',
      desc: '',
      args: [],
    );
  }

  /// `Heart Disease`
  String get onboardingChronicHeartOption {
    return Intl.message(
      'Heart Disease',
      name: 'onboardingChronicHeartOption',
      desc: '',
      args: [],
    );
  }

  /// `Start Your Record`
  String get onboardingStartButtonLabel {
    return Intl.message(
      'Start Your Record',
      name: 'onboardingStartButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get bottomNavShareLabel {
    return Intl.message(
      'Share',
      name: 'bottomNavShareLabel',
      desc: '',
      args: [],
    );
  }

  /// `My Meds`
  String get bottomNavMedicationsLabel {
    return Intl.message(
      'My Meds',
      name: 'bottomNavMedicationsLabel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottomNavHomeLabel {
    return Intl.message('Home', name: 'bottomNavHomeLabel', desc: '', args: []);
  }

  /// `You don't have permission to perform this action`
  String get permissionDenied {
    return Intl.message(
      'You don\'t have permission to perform this action',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `The requested data was not found`
  String get notFound {
    return Intl.message(
      'The requested data was not found',
      name: 'notFound',
      desc: '',
      args: [],
    );
  }

  /// `Service is currently unavailable. Please try again later`
  String get serviceUnavailable {
    return Intl.message(
      'Service is currently unavailable. Please try again later',
      name: 'serviceUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Connection timed out. Please check your internet`
  String get connectionTimeout {
    return Intl.message(
      'Connection timed out. Please check your internet',
      name: 'connectionTimeout',
      desc: '',
      args: [],
    );
  }

  /// `This record already exists`
  String get alreadyExists {
    return Intl.message(
      'This record already exists',
      name: 'alreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `You must be logged in to perform this action`
  String get unauthenticated {
    return Intl.message(
      'You must be logged in to perform this action',
      name: 'unauthenticated',
      desc: '',
      args: [],
    );
  }

  /// `Request was cancelled`
  String get requestCancelled {
    return Intl.message(
      'Request was cancelled',
      name: 'requestCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message('Full Name', name: 'fullName', desc: '', args: []);
  }

  /// `Age`
  String get age {
    return Intl.message('Age', name: 'age', desc: '', args: []);
  }

  /// ` Blood Type`
  String get bloodType {
    return Intl.message(' Blood Type', name: 'bloodType', desc: '', args: []);
  }

  /// `ChronicDisease`
  String get chronicDisease {
    return Intl.message(
      'ChronicDisease',
      name: 'chronicDisease',
      desc: '',
      args: [],
    );
  }

  /// `Choose blood type`
  String get bloodtype {
    return Intl.message(
      'Choose blood type',
      name: 'bloodtype',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Information`
  String get onboardingBasicInfoTitle {
    return Intl.message(
      'Enter Your Information',
      name: 'onboardingBasicInfoTitle',
      desc: '',
      args: [],
    );
  }

  /// `Logged in successfully`
  String get oboardingsavesuccess {
    return Intl.message(
      'Logged in successfully',
      name: 'oboardingsavesuccess',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createAccount {
    return Intl.message(
      'Create New Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `I already have an account`
  String get alreadyHaveAccount {
    return Intl.message(
      'I already have an account',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Track every medical visit`
  String get welcomeFeature1Title {
    return Intl.message(
      'Track every medical visit',
      name: 'welcomeFeature1Title',
      desc: '',
      args: [],
    );
  }

  /// `Your prescriptions and diagnoses in one place`
  String get welcomeFeature1Sub {
    return Intl.message(
      'Your prescriptions and diagnoses in one place',
      name: 'welcomeFeature1Sub',
      desc: '',
      args: [],
    );
  }

  /// `Daily medication reminder`
  String get welcomeFeature2Title {
    return Intl.message(
      'Daily medication reminder',
      name: 'welcomeFeature2Title',
      desc: '',
      args: [],
    );
  }

  /// `Never miss your dose again`
  String get welcomeFeature2Sub {
    return Intl.message(
      'Never miss your dose again',
      name: 'welcomeFeature2Sub',
      desc: '',
      args: [],
    );
  }

  /// `Share with your doctor instantly`
  String get welcomeFeature3Title {
    return Intl.message(
      'Share with your doctor instantly',
      name: 'welcomeFeature3Title',
      desc: '',
      args: [],
    );
  }

  /// `Any doctor you visit sees your full record`
  String get welcomeFeature3Sub {
    return Intl.message(
      'Any doctor you visit sees your full record',
      name: 'welcomeFeature3Sub',
      desc: '',
      args: [],
    );
  }

  /// `Your data is protected`
  String get welcomeFeature4Title {
    return Intl.message(
      'Your data is protected',
      name: 'welcomeFeature4Title',
      desc: '',
      args: [],
    );
  }

  /// `You're in full control`
  String get welcomeFeature4Sub {
    return Intl.message(
      'You\'re in full control',
      name: 'welcomeFeature4Sub',
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
