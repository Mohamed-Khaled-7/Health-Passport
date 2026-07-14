String convertNumberToInternational(String phoneNumber) {
  final normalized = phoneNumber.trim();

  return '+20${normalized.substring(1)}';
}
