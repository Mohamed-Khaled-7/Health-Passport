// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';

class PatientModel extends PatientEntity {
  PatientModel({
    required super.name,
    required super.age,
    required super.bloodType,
    super.chronicDisease,
  });

  Map<String, dynamic> toMap() => {
    'name': name,
    'age': age,
    'bloodType': bloodType,
    'chronicDisease': chronicDisease,
  };
  factory PatientModel.fromMap(Map<String, dynamic> map) => PatientModel(
    name: map['name'],
    age: map['age'],
    bloodType: map['bloodType'],
    chronicDisease: map['chronicDisease'],
  );
}
