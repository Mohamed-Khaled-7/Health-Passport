import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthpassport/core/utils/app_routes.dart';
import 'package:healthpassport/core/utils/get_it.dart';
import 'package:healthpassport/features/login/presentation/cubit/bloc/login_bloc.dart';
import 'package:healthpassport/firebase_options.dart';
import 'package:healthpassport/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const HealthPassport());
}

class HealthPassport extends StatelessWidget {
  const HealthPassport({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => gitIt<LoginBloc>(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            locale: const Locale('ar'),
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            routerConfig: AppRoutes.routes,
            title: 'Health Passport',
          );
        },
      ),
    );
  }
}
