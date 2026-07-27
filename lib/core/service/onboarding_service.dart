import 'package:healthpassport/core/constant/app_keys.dart';
import 'package:hive_flutter/adapters.dart';

class HiveOnboardingService {
  final box = Hive.box('settings');

  void setOnboarding({required bool value}) {
    box.put(AppKeys.onboardingKey, value);
  }

  bool isOnboarding() {
    return box.get(AppKeys.onboardingKey, defaultValue: false);
  }
}
