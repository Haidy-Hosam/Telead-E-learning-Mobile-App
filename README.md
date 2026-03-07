# 📚 Telead — E-Learning Mobile App

<p align="center">
  <img width="120" alt="Telead Logo" src="https://github.com/user-attachments/assets/9161628e-769c-4bcc-866a-91a8a64b202d" />
</p>

<p align="center">
  A cross-platform e-learning mobile application built with Flutter, featuring a clean feature-based architecture, a centralized design system, and end-to-end online learning flows.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-lightgrey" />
  <img src="https://img.shields.io/badge/Status-UI--Complete-brightgreen" />
</p>

---

## ✨ Features

### 🔐 Authentication
- Animated **Splash Screen**
- **Login** & **Sign Up** flows with form validation
- **Forgot Password** recovery screen
- "Lets You In" onboarding / social auth entry point

### 🔍 Course Discovery (Explore)
- **Search** courses by keyword
- Browse **Popular Courses** and **Categories**
- Discover **Mentors** with profile previews
- Full **Course Detail** pages

### 🎓 Learning Management (My Courses)
- **Ongoing** courses tab with progress tracking
- **Completed** courses tab
- Course content viewer

### 💬 Inbox
- Chat-style messaging interface
- Conversation list and message threads

### 💳 Transactions
- Payment and purchase history views

### 👤 Profile
- User profile management
- Settings and preferences views

---

## 🏗️ Project Structure

```
Telead-E-learning-Mobile-App/
├─ lib/
│  ├─ main.dart                  # App entry point
│  ├─ Core/                      # Shared foundation
│  │  ├─ CommonWidgets/          # Reusable UI components
│  │  ├─ Constans/               # App-wide constants
│  │  ├─ functions/              # Utility functions
│  │  ├─ Style/                  # Colors, text styles, theme
│  │  └─ utils/                  # Helpers & extensions
│  └─ Features/                  # Feature modules
│     ├─ Auth/                   # Auth flows (splash, login, signup, forgot pw)
│     ├─ Explore/                # Course discovery & search
│     ├─ Categories/             # Category browsing
│     ├─ myCourses/              # Enrolled courses management
│     ├─ Inbox/                  # Messaging & notifications
│     ├─ Transaction/            # Payments & history
│     └─ Profile/                # User profile & settings
├─ assets/
│  ├─ Fonts/                     # Mulish font family
│  ├─ icons/                     # SVG / PNG icons
│  └─ images/                    # Illustrations & images
├─ test/
└─ pubspec.yaml
```

Each feature follows a consistent internal layout:

```
FeatureName/
├─ views/      # Screen-level widgets
└─ widgets/    # Feature-scoped reusable components
```

---

## 🎨 Design System

Telead uses a **centralized design system** defined under `lib/Core/Style/`:

| Token | Details |
|---|---|
| **Font** | [Mulish](https://fonts.google.com/specimen/Mulish) — Regular, Medium, SemiBold, Bold |
| **Colors** | Custom palette via `AppColors` constant class |
| **Text Styles** | Predefined `TextStyle` variants for headings, body, captions |
| **Shared Widgets** | Buttons, inputs, cards, loaders in `Core/CommonWidgets/` |

---

## 🚀 Getting Started

### Prerequisites

| Tool | Version |
|---|---|
| Flutter SDK | `>=3.0.0` |
| Dart SDK | `>=3.0.0` |
| Android Studio / Xcode | Latest stable |

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/your-username/Telead-E-learning-Mobile-App.git
cd Telead-E-learning-Mobile-App

# 2. Install dependencies
flutter pub get

# 3. Run the app
flutter run
```

## 📦 Dependencies

> See [`pubspec.yaml`](pubspec.yaml) for the full and up-to-date list.

| Package | Purpose |
|---|---|
| `flutter` SDK | Core framework |
| `google_fonts` | Mulish font integration |
| `flutter_svg` | SVG icon rendering |
| `go_router` / `auto_route` | Navigation & routing |
| `provider` / `bloc` | State management |
| `cached_network_image` | Efficient image loading |

---

## 📱 Screenshots

> _Add your screenshots here._

| Splash | Login | Explore | My Courses |
|---|---|---|---|
| ![](assets/images/splash.png) | ![](assets/images/login.png) | ![](assets/images/explore.png) | ![](assets/images/my_courses.png) |

---

## 🗺️Future Roadmap

- [ ] Connect to a live backend / REST API
- [ ] Implement state management (BLoC / Riverpod)
- [ ] Add video playback for course content
- [ ] Push notifications for inbox & progress
- [ ] Write unit & integration tests
- [ ] Publish to Google Play & App Store

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m 'feat: add my feature'`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a Pull Request

---

## 📄 License

Licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

<p align="center">Made with ❤️ using Flutter</p>
