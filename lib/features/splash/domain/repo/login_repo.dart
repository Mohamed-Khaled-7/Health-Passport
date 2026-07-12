abstract class LoginRepo {
  Future<void> sendotp();
  Future<void> verifyotp();
}