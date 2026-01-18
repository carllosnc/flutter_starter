# Flutter Starter

> A robust and opinionated Flutter template for jumpstarting project development.

[![Flutter Starter](https://github.com/carllosnc/flutter_starter/actions/workflows/dart.yml/badge.svg)](https://github.com/carllosnc/flutter_starter/actions/workflows/dart.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## 🚀 Features

This starter template comes pre-configured with essential libraries and best practices:

- **Routing**: [GoRouter](https://pub.dev/packages/go_router) for declarative routing.
- **State Management**: Reactive state management pattern.
- **Persistence**:
  - `shared_preferences` for local storage.
  - `reactive_preferences` for reactive capabilities on top of shared preferences.
- **Networking**: `http` client for API calls.
- **Serialization**: `json_serializable` and `json_annotation` for easy JSON handling.
- **UI Components**:
  - `fabric` custom UI library (git dependency).
  - `font_awesome_flutter` & `fluentui_system_icons` & `cupertino_icons`.
  - Custom Fonts setup (SF Pro Display).
- **Internationalization**: `intl` package setup.
- **Splash Screen**: `flutter_native_splash` configuration.
- **Launcher Icons**: `flutter_launcher_icons` configuration.

## 📂 Project Structure

The project follows a modular architecture:

```
lib/
├── components/      # Reusable UI components (Widgets)
├── core/            # Core functionality (Extensions, Routes, Utils)
├── data/            # Data layer (Repositories, Data Sources)
├── domain/          # Domain layer (Models, Entities, Business Logic)
├── features/        # Feature-specific pages and logic
├── preferences/     # Data persistence configurations
├── shared_states/   # Shared state management
├── app.dart         # App entry point and configuration
└── main.dart        # Application main function
```

## 🛠 Getting Started

### Prerequisites

- Flutter SDK (>=3.1.0 <4.0.0)
- Dart SDK

### Installation

1. **Clone the repository**

   ```bash
   gh repo clone C4co/flutter_starter app_name
   # OR
   git clone https://github.com/C4co/flutter_starter.git app_name
   ```

2. **Install dependencies**

   ```bash
   cd app_name
   flutter pub get
   ```

3. **Run the app**

   ```bash
   flutter run
   ```

## ⚡ Helper Commands

### Code Generation

Run `build_runner` to generate code for JSON serialization and other code-gen packages:

```bash
# Run once
dart run build_runner build --delete-conflicting-outputs

# Watch for changes
dart run build_runner watch --delete-conflicting-outputs
```

### Assets Management

**Generate App Icon**
Updates the app icon based on `flutter_launcher_icons.yaml`:

```bash
dart run flutter_launcher_icons
```

**Generate Splash Screen**
Updates the splash screen based on `flutter_native_splash.yaml`:

```bash
dart run flutter_native_splash:create
```

## 📝 License

MIT © [Carlos Costa](https://github.com/carllosnc)
