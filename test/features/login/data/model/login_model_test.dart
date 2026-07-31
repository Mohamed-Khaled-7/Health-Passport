import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/login/data/models/user_model.dart';

void main() {
  test('login model test', () {
    final userMOdel = UserModel(uid: '33232', phone: '20122121212');
    expect(userMOdel.uid, '33232');
    expect(userMOdel.phone, '20122121212');
  });
}
