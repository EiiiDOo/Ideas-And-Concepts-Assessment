# 🛠️ Flutter Customer Support Module

A Flutter application built using **GetX** for state management and **Firebase** integration, following the **MVVM** architecture. This project implements a simple customer support module with features like FAQs, contact methods, and optional real-time chat simulation.

---

## 📂 Project Structure

```
lib/
├── config/             # App-level configuration (routes, themes, localization)
│   ├── localization/
│   ├── routes/
│   └── theme/
├── core/               # Core utilities and services
│   ├── constants/
│   ├── error/
│   ├── extensions/
│   ├── middleware/
│   └── services/
├── data/               # Data sources, models, and repositories (Firebase interactions)
│   ├── data_sources/
│   ├── models/
│   └── repositories/
├── domain/             # Business logic layer
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/       # UI layer using GetX (Bindings, Views, ViewModels)
│   ├── bindings/
│   ├── states/
│   ├── view_models/
│   └── views/
├── firebase_options.dart  # Firebase config (auto-generated)
└── main.dart              # App entry point
```

---

## 🎯 Features

- **Customer Service Screen**
  - Welcome message + navigation options
- **Help & FAQs Screen**
  - Tabs with expandable Q&A, search & filtering
- **Contact Us Options**
  - Contact methods with expandable actions


---

## 🧪 Architecture & Tools

- **State Management**: [GetX](https://pub.dev/packages/get)
- **Architecture**: MVVM (Model - View - ViewModel)
- **Firebase**:
  - Firestore for data
  - Storage for profile picture upload
- **Bindings & Middleware**: GetX navigation lifecycle handling
- **Reusable Widgets**: Buttons, text fields, etc.
- **Consistent Design**: Centralized constants for colors, styles, and padding

---

## 🚀 Getting Started

1. Clone the repository:
```bash
git clone https://github.com/EiiiDOo/Ideas-And-Concepts-Assessment.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Set up Firebase:
- Follow the setup in `firebase_options.dart`.
- Add your Firebase config files (`google-services.json` / `GoogleService-Info.plist`).

4. Run the app:
```bash
flutter run
```

---
# 📸 Screenshots
<img src="https://github.com/user-attachments/assets/e2e02b2e-a024-485c-8815-1502b62318ff" alt="WhatsApp Image 0" width="200" style="margin:10"/>
<img src="https://github.com/user-attachments/assets/431938e1-72d7-489f-8f84-758e157ec02f" alt="WhatsApp Image 0" width="200" style="margin:10"/>
<img src="https://github.com/user-attachments/assets/116852f4-7663-40ba-8c3b-83f26ef0e641" alt="WhatsApp Image 0" width="200" style="margin:10"/>

## 📄 License

This project is for educational and evaluation purposes.
