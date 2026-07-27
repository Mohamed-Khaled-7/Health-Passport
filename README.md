# Health Passport

A Flutter mobile application that provides a digital, secure health passport for users — built with Clean Architecture, Bloc/Cubit, Firebase Authentication, and Cloud Firestore.

## Overview

Health Passport currently covers the full flow from sign-up to profile creation:

1. Phone number authentication (OTP) via Firebase Auth.
2. A post-login onboarding step where the user (patient) fills in basic medical info: name, age, blood type, and chronic disease (if any).
3. That data is saved to and retrieved from Cloud Firestore.

The project is structured to scale cleanly as more health-passport features (medical records, QR verification, etc.) are added on top of this foundation.

## Features

- **Phone Authentication (OTP)** — Sign in securely using a phone number, verified through Firebase Auth (`sendOtp` / `verifyOtp` flow).
- **Patient Onboarding** — A form-based onboarding screen that collects name, age, blood type, and chronic disease, with validation and dropdown selectors.
- **Cloud Firestore Integration** — Patient profile data is persisted per authenticated user (`savePatientData` / `getOnBoardingData`).
- **Localization Ready** — Arabic locale configured out of the box via `flutter_localizations` and generated `.arb` translations (onboarding form strings are localized).
- **Declarative Navigation** — Centralized routing with `go_router` (Splash → Login → OTP Verification → Onboarding → Home).
- **Responsive UI** — Adaptive layouts using `flutter_screenutil`.
- **Custom Design System** — Centralized color palette and reusable UI widgets (custom snackbars, text fields, dropdowns, buttons).

## Architecture

The project follows Clean Architecture with a feature-first folder structure, separating each feature into three layers:

```
lib/
├── core/                       # Shared code across features
│   ├── baseusecase/             # Base use case contract
│   ├── constant/                 # App-wide constants (e.g. Firestore collection keys)
│   ├── errors/                   # Failure classes for functional error handling
│   ├── theme/                    # App colors & design tokens
│   ├── utils/                     # Routing (go_router) & Dependency Injection (get_it)
│   └── widgets/                   # Shared reusable widgets
│
├── features/
│   ├── splash/                    # App entry / splash screen
│   ├── login/                     # Phone auth + OTP verification
│   │   ├── data/                   # Data sources, models, repository implementation
│   │   ├── domain/                 # Entities, repository contracts, use cases
│   │   └── presentation/           # Views, widgets, Cubit/Bloc
│   ├── onboarding/                 # Patient profile creation
│   │   ├── data/                    # Firestore data source, patient model
│   │   ├── domain/                   # Patient entity, repository contract, use cases
│   │   └── presentation/             # Onboarding form UI, Cubit/Bloc
│   └── home/                        # Post-onboarding landing screen
│
├── firebase_options.dart
└── main.dart
```

Key architectural decisions:

| Concern | Approach |
|---|---|
| State Management | `flutter_bloc` (Bloc/Cubit) |
| Dependency Injection | `get_it` |
| Error Handling | Functional error handling with `dartz` (`Either<Failure, T>`) |
| Routing | `go_router` |
| Auth Backend | Firebase Authentication (Phone/OTP) |
| Data Persistence | Cloud Firestore |

## Tech Stack

- Language: Dart
- Framework: Flutter
- State Management: Bloc / Cubit
- Backend: Firebase (Authentication, Cloud Firestore)
- DI: GetIt
- Routing: GoRouter
- Functional Programming: Dartz
- Responsive UI: flutter_screenutil
- Fonts: Google Fonts

## Project Structure Highlights

- `login_bloc.dart` — Handles `SendOtpEvent` and `VerifyOtpEvent`, emitting loading/success/failure states.
- `login_remote_datasource.dart` — Wraps Firebase's `verifyPhoneNumber` and `signInWithCredential` calls behind an `Either<Failure, T>` contract.
- `onboarding_bloc.dart` — Handles `SavePatientEvent` and `GetPatientEvent` for creating and fetching a patient profile.
- `onBoarding_remote_datasource.dart` — Saves/reads patient documents in Firestore, keyed by the authenticated user's UID.
- `app_routes.dart` — Single source of truth for all named routes.

## Getting Started

### Prerequisites
- Flutter SDK (^3.10.4 or compatible)
- A Firebase project with Phone Authentication and Cloud Firestore enabled
- `google-services.json` (Android) / `GoogleService-Info.plist` (iOS) configured

### Installation

```bash
# Clone the repository
git clone https://github.com/Mohamed-Khaled-7/Health-Passport.git
cd Health-Passport

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Firebase Setup
1. Create a project on the [Firebase Console](https://console.firebase.google.com/).
2. Enable Phone sign-in under Authentication providers.
3. Enable Cloud Firestore and create the collection referenced by `AppKeys.firestoreCollection`.
4. Run `flutterfire configure` to regenerate `firebase_options.dart` for your own project, or replace the existing platform config files with your own.

## App Flow

```
Splash View → Login View (enter phone number) → OTP Verification View → Onboarding View (patient info) → Home View
```

## Status

Under active development. Completed so far: phone authentication and patient onboarding (saved to Firestore). The Home View is currently a placeholder pending the core health-passport features below.

## Roadmap

- [ ] Build out the Home View with real patient/passport data
- [ ] Add QR-code based health passport verification
- [ ] Add local storage/offline support (Hive)
- [ ] Expand unit & widget test coverage
- [ ] Add multi-language support beyond Arabic

## Contributing

Contributions, issues, and feature requests are welcome. Feel free to open an issue or submit a pull request.

## License

This project is open source and available for learning and portfolio purposes.

---

Author: [Mohamed Khaled](https://github.com/Mohamed-Khaled-7)
