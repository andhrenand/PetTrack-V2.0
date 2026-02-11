# Pet Track

Pet Track is a Flutter app for pet owners to manage pet care, appointments, shopping, and support in one place.

## Tech Stack
- Flutter (Dart)
- GetX (state management, routing, dependency injection)
- Firebase Core + Firebase Auth (authentication)
- Flutter ScreenUtil (responsive sizing)

## Features
- User authentication (Sign In / Sign Up)
- Customer home and profile
- Pet management (list, add, detail, activity, care)
- Medical tools (vaccine tracker, medical history, reminders)
- Shop flow (product list/detail, service list/detail, transaction history)
- In-app support chat
- Bottom navigation for main sections

## Getting Started
1. Configure Firebase for Android/iOS and place `firebase_options.dart` in `lib/`.
2. Enable Email/Password authentication in Firebase Console.
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```
