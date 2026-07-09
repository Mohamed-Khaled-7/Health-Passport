import 'package:flutter_test/flutter_test.dart';
import 'package:healthpassport/features/login/presentation/views/login_view.dart';
import 'package:healthpassport/main.dart';

void main() {
  testWidgets('Health Passport', (tester) async {
    //هنا اول حاجه هنشغل الابليكيشن
    await tester.pumpWidget(const HealthPassport());
    // بعد كدا هندور علي التكست
    expect(find.text('سجلك الطبي معاك دايماً'), findsOneWidget);
  });
  testWidgets('after 2 seconds go to login', (tester) async {
   await tester.pumpWidget(const HealthPassport());
   await tester.pump(const Duration(seconds: 2));
   await tester.pumpAndSettle();
   expect(find.byType(LoginView),findsOneWidget);
  });
}
