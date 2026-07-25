import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthpassport/core/constant/app_keys.dart';
import 'package:healthpassport/features/onboarding/data/model/patient_model.dart';

abstract class OnBoardingRemoteDataSource {
  Future<PatientModel> getOnBoardingData({required String uid});
  Future<void> savePatientData({required PatientModel patient});
}

class OnBoardingRemoteDataSourceImpl implements OnBoardingRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  const OnBoardingRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.firestore,
  });
  @override
  Future<void> savePatientData({required PatientModel patient}) async {
    try {
      final uid = firebaseAuth.currentUser?.uid;
      if (uid == null) {
        throw Exception('User is not authenticated.');
      }
      await firestore
          .collection(AppKeys.firestoreCollection)
          .doc(uid)
          .set(patient.toMap());
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<PatientModel> getOnBoardingData({required String uid}) async {
    try {
      final doc = await firestore
          .collection(AppKeys.firestoreCollection)
          .doc(uid)
          .get();
      if (!doc.exists || doc.data() == null) {
        throw Exception('Patient data not found.');
      }
      return PatientModel.fromMap(doc.data()!);
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
