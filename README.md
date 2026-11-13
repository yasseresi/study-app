# Study App — Quiz Platform

![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black)
![GetX](https://img.shields.io/badge/State-GetX-8A2BE2)

A Flutter app where students browse question papers across subjects and take timed multiple-choice quizzes. Content lives in Cloud Firestore and images in Firebase Storage.

## ✨ Features

- Browse quiz papers by field, with cover images from Firebase Storage
- Take multiple-choice quizzes question by question
- Splash, onboarding/introduction and home screens
- Light and dark themes with a shared theme mixin
- Admin data-upload screen that seeds Firestore from local JSON

## 📸 Screenshots

> Screenshots coming soon. Drop images in `docs/screenshots/` and uncomment the table below.

<!--
| Screen 1 | Screen 2 | Screen 3 |
|:---:|:---:|:---:|
| <img src="docs/screenshots/01.png" width="240"/> | <img src="docs/screenshots/02.png" width="240"/> | <img src="docs/screenshots/03.png" width="240"/> |
-->

## 🛠 Tech Stack

| Area | Choice |
|---|---|
| UI | Flutter 3 + `flutter_platform_widgets` |
| State / DI / routing | GetX (`get`) |
| Backend | Cloud Firestore, Firebase Storage |
| Images & fonts | `cached_network_image`, `google_fonts` |

## 📁 Structure

```
lib/
├── bindings/      # GetX initial bindings
├── controllers/   # auth, theme, question papers, data uploader
├── firebase_ref/  # Firestore references & API
├── models/        # question paper model
├── screens/       # splash, introduction, home
├── services/      # Firebase Storage service
└── configs/       # themes, colours, UI parameters
```

## 🚀 Getting Started

```bash
git clone https://github.com/yasseresi/study-app.git && cd study-app
flutter pub get
flutterfire configure   # link your own Firebase project
flutter run
```

---

## 👤 Author

**Yasser Korzane** — Flutter & Go developer · [GitHub](https://github.com/yasseresi) · [LinkedIn](https://www.linkedin.com/in/korzane-yasser)
