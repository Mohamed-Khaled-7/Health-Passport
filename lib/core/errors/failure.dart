import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthpassport/generated/l10n.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class FirebaseAuthFailure extends Failure {
  const FirebaseAuthFailure({required super.errMessage});

  factory FirebaseAuthFailure.fromFirebaseAuthException(
    FirebaseAuthException exception,
  ) {
    switch (exception.code) {
      case 'invalid-phone-number':
        return FirebaseAuthFailure(errMessage: S.current.invalidPhoneNumber);
      case 'too-many-requests':
        return FirebaseAuthFailure(errMessage: S.current.tooManyRequests);

      case 'quota-exceeded':
        return FirebaseAuthFailure(errMessage: S.current.quotaExceeded);

      case 'operation-not-allowed':
        return FirebaseAuthFailure(errMessage: S.current.operationNotAllowed);

      case 'invalid-verification-code':
        return FirebaseAuthFailure(
          errMessage: S.current.invalidVerificationCode,
        );

      case 'invalid-verification-id':
        return FirebaseAuthFailure(errMessage: S.current.invalidVerificationId);

      case 'session-expired':
        return FirebaseAuthFailure(errMessage: S.current.sessionExpired);

      case 'network-request-failed':
        return FirebaseAuthFailure(errMessage: S.current.networkRequestFailed);

      default:
        return FirebaseAuthFailure(errMessage: S.current.unexpectedError);
    }
  }
}
class FirestoreFailure extends Failure {
  const FirestoreFailure({required super.errMessage});

  factory FirestoreFailure.fromFirebaseException(FirebaseException e) {
    switch (e.code) {
      case 'permission-denied':
        return FirestoreFailure(errMessage: S.current.permissionDenied);
      case 'not-found':
        return FirestoreFailure(errMessage: S.current.notFound);
      case 'unavailable':
        return FirestoreFailure(errMessage: S.current.serviceUnavailable);
      case 'deadline-exceeded':
        return FirestoreFailure(errMessage: S.current.connectionTimeout);
      case 'network-request-failed':
        return FirestoreFailure(errMessage: S.current.networkRequestFailed);
      case 'already-exists':
        return FirestoreFailure(errMessage: S.current.alreadyExists);
      case 'unauthenticated':
        return FirestoreFailure(errMessage: S.current.unauthenticated);
      case 'cancelled':
        return FirestoreFailure(errMessage: S.current.requestCancelled);
      case 'data-loss':
        return FirestoreFailure(errMessage: S.current.unexpectedError);
      default:
        return FirestoreFailure(errMessage: S.current.unexpectedError);
    }
  }
}