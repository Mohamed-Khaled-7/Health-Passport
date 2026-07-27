import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/splash/presentation/views/splash_view.dart';

import '../../../helper/build_test_app.dart';

void main() {
  testWidgets('Splash View test app name', (tester) async {
    await tester.pumpWidget(buildTestApp(home: SplashView()));
    await tester.pump(const Duration(milliseconds: 600));
    debugDumpApp();
    expect(find.text('سجلك الطبي معاك دايمًا'), findsOneWidget);
    await tester.pump(const Duration(seconds: 2));
  });
}
