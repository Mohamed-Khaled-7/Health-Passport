String? validatePhoneNumer(
  String? value, {
  required String phoneNumberRequired,
  required String invalidPhoneNumber,
}) {
  if (value == null || value.trim().isEmpty) {
    return phoneNumberRequired;
  }
  final phoneNumber = value.trim();
  final egyptianPhoneRegex = RegExp(r'^01[0125][0-9]{8}$');
  if (!egyptianPhoneRegex.hasMatch(phoneNumber)) {
    return invalidPhoneNumber;
  }
  return null;
}