import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthpassport/core/theme/app_color.dart';
import 'package:healthpassport/core/utils/app_routes.dart';
import 'package:healthpassport/core/widgets/custom_snak_bar.dart';
import 'package:healthpassport/core/widgets/custom_text_field.dart';
import 'package:healthpassport/features/onboarding/domain/entity/patient_entity.dart';
import 'package:healthpassport/features/onboarding/presentation/cubit/bloc/onboarding_bloc.dart';
import 'package:healthpassport/features/onboarding/presentation/views/widgets/labeled_dropdown_field.dart';
import 'package:healthpassport/generated/l10n.dart';

import 'avatar_icon.dart';
import 'dropdown_option.dart';
import 'primary_button.dart';
import 'title_section.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();

  String? _selectedBloodType;
  String? _selectedChronicDisease;

  @override
  void dispose() {
    namecontroller.dispose();
    agecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    final bloodTypes = <DropdownOption>[
      const DropdownOption(label: 'A+', value: 'A+'),
      const DropdownOption(label: 'A-', value: 'A-'),
      const DropdownOption(label: 'B+', value: 'B+'),
      const DropdownOption(label: 'B-', value: 'B-'),
      const DropdownOption(label: 'O+', value: 'O+'),
      const DropdownOption(label: 'O-', value: 'O-'),
      const DropdownOption(label: 'AB+', value: 'AB+'),
      const DropdownOption(label: 'AB-', value: 'AB-'),
    ];

    final chronicDiseases = <DropdownOption>[
      DropdownOption(label: s.onboardingChronicNoneOption, value: 'none'),
      DropdownOption(
        label: s.onboardingChronicDiabetesOption,
        value: 'diabetes',
      ),
      DropdownOption(
        label: s.onboardingChronicBloodPressureOption,
        value: 'blood_pressure',
      ),
      DropdownOption(label: s.onboardingChronicHeartOption, value: 'heart'),
    ];

    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state is SavePatientSuccess) {
          CustomSnakPar(
            context: context,
            message: s.oboardingsavesuccess,
            backgroundColor: AppColors.primaryGreen,
            icons: Icons.done,
          );
          GoRouter.of(context).go(AppRoutes.homeRoute);
        }

        if (state is SavePatientFailure) {
          CustomSnakPar(
            context: context,
            message: state.message,
            backgroundColor: AppColors.coral,
            icons: Icons.error,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.card,
          body: Form(
            key: formKey,
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const AvatarIcon(),
                    const SizedBox(height: 20),
                    Center(
                      child: TitleSection(title: s.onboardingBasicInfoTitle),
                    ),
                    const SizedBox(height: 24),
                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your name';
                        }

                        if (value.trim().length < 2) {
                          return 'Name must be at least 2 characters';
                        }

                        final nameRegex = RegExp(
                          r"^[a-zA-Z\u0600-\u06FF\s'-]+$",
                        );

                        if (!nameRegex.hasMatch(value.trim())) {
                          return 'Name contains invalid characters';
                        }

                        return null;
                      },
                      label: s.fullName,
                      h: 16,
                      w: 10,
                      hint: s.fullName,
                      controller: namecontroller,
                    ),
                    const SizedBox(height: 6),
                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your age';
                        }

                        final age = int.tryParse(value.trim());

                        if (age == null) {
                          return 'Please enter a valid age';
                        }

                        if (age < 1 || age > 120) {
                          return 'Age must be between 1 and 120';
                        }

                        return null;
                      },
                      label: s.onboardingAgeLabel,
                      h: 16,
                      w: 10,
                      hint: s.onboardingAgeHint,
                      controller: agecontroller,
                    ),
                    const SizedBox(height: 20),
                    LabeledDropdownField(
                      label: s.onboardingBloodTypeLabel,
                      hint: s.onboardingBloodTypeHint,
                      value: _selectedBloodType,
                      options: bloodTypes,
                      onChanged: (value) {
                        setState(() => _selectedBloodType = value);
                      },
                    ),
                    const SizedBox(height: 20),
                    LabeledDropdownField(
                      label: s.onboardingChronicDiseaseLabel,
                      hint: s.onboardingChronicDiseaseHint,
                      value: _selectedChronicDisease,
                      options: chronicDiseases,
                      onChanged: (value) {
                        setState(() => _selectedChronicDisease = value);
                      },
                    ),
                    const SizedBox(height: 32),
                    PrimaryButton(
                      isLoading: state is SavePatientLoading,
                      label: s.onboardingStartButtonLabel,
                      onPressed: () {
                        if (!formKey.currentState!.validate()) return;

                        context.read<OnboardingBloc>().add(
                          SavePatientEvent(
                            patient: PatientEntity(
                              name: namecontroller.text,
                              age: int.parse(agecontroller.text),
                              bloodType: _selectedBloodType!,
                              chronicDisease: _selectedChronicDisease!,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
