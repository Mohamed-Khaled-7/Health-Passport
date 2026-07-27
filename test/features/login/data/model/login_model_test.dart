import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/login/data/models/user_model.dart';

void main() {
  group('User Model', () {
    test('create model with correct values', () {
      final model = UserModel(uid: '123', phone: '123456789');
      expect(model.uid, '123');
      expect(model.phone, '123456789');
    });
  });
}
