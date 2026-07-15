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
    "appName": MessageLookupByLibrary.simpleMessage("Health Passport"),
    "appTagline": MessageLookupByLibrary.simpleMessage(
      "Your medical record is always with you",
    ),
    "changePhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Change Phone Number",
    ),
    "confirmAndLogin": MessageLookupByLibrary.simpleMessage("Confirm & Login"),
    "countryCode": MessageLookupByLibrary.simpleMessage("+20"),
    "enterPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Enter your phone number",
    ),
    "invalidOtpError": MessageLookupByLibrary.simpleMessage("Invalid OTP code"),
    "invalidPhoneNumber": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number",
    ),
    "invalidVerificationCode": MessageLookupByLibrary.simpleMessage(
      "The verification code is invalid",
    ),
    "invalidVerificationId": MessageLookupByLibrary.simpleMessage(
      "The verification session is invalid. Please try again",
    ),
    "networkRequestFailed": MessageLookupByLibrary.simpleMessage(
      "Please check your internet connection and try again",
    ),
    "operationNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Phone authentication is currently unavailable",
    ),
    "phoneHint": MessageLookupByLibrary.simpleMessage("01X XXXX XXXX"),
    "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "phoneNumberRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your phone number",
    ),
    "quotaExceeded": MessageLookupByLibrary.simpleMessage(
      "The SMS quota has been exceeded. Please try again later",
    ),
    "sendVerificationCode": MessageLookupByLibrary.simpleMessage(
      "Send Verification Code",
    ),
    "sessionExpired": MessageLookupByLibrary.simpleMessage(
      "The verification code has expired. Please request a new code",
    ),
    "tooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Too many requests. Please try again later",
    ),
    "unexpectedError": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred. Please try again",
    ),
    "verificationCode": MessageLookupByLibrary.simpleMessage(
      "Verification Code",
    ),
    "verificationCodeSent": MessageLookupByLibrary.simpleMessage(
      "A 6-digit verification code has been sent ",
    ),
  };
}
