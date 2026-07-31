import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/login/data/datasource/remote/login_remote_datasource.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_remote_datasource_test.mocks.dart';

@GenerateMocks([FirebaseAuth])
void main() {
  late MockFirebaseAuth mockFirebaseAuth;
  late LoginRemoteDataSourceImpl remoteLoginDataSource;
  setUp((){
    mockFirebaseAuth = MockFirebaseAuth();
    remoteLoginDataSource = LoginRemoteDataSourceImpl(firebaseAuth: MockFirebaseAuth());
  });
  group('testt for login remoteg data source ', () {
    final String phoneNumber = '01229879471';
      final String verificationId = 'verificationId';
    test('send otp must retrun verificationId', () {
      when(
       mockFirebaseAuth.verifyPhoneNumber()
      );
    });
  });
}
