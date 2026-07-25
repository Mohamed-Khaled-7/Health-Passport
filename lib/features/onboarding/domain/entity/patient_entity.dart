class PatientEntity {
  final String name;
  final int age;
  final String bloodType;
  final String? chronicDisease;
  PatientEntity({
    required this.name,
    required this.age,
    required this.bloodType,
    this.chronicDisease,
  });
}
