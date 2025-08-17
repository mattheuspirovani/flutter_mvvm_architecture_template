🚀 Flutter Starter Template inspired by the official Compass app architecture case study.

This repository provides a solid base for building clean, scalable, and maintainable Flutter applications using the MVVM pattern and a layered architecture. It follows the same principles demonstrated in Flutter’s architecture case study, making it easy to start new projects with industry-grade structure and best practices baked in.

**What you get:**
- **Layered structure inspired by the Compass app**:
  - `lib/data`: repositories, services, API models
  - `lib/domain`: application data models
  - `lib/ui`: feature-based organization, with a `ui/core` for shared widgets/themes
  - Multiple `main.dart` entrypoints for development, staging, and production environments :contentReference[oaicite:1]{index=1}

- **MVVM pattern**:
  - One `ViewModel` per `View` to manage UI state
  - UI state exposed through immutable properties and updated via `ChangeNotifier` or similar :contentReference[oaicite:2]{index=2}

- **Key architecture features**:
  - Repository and service layers for data access
  - Command pattern for safe UI rendering as data changes
  - Dependency injection using `provider`
  - Full testing support, including `test/` and `testing/` folders for mocks and fakes :contentReference[oaicite:3]{index=3}

This template is flexible — you can swap out state-management libraries (e.g., Riverpod, BLoC), rename modules, or adapt the structure to your project's needs while keeping architecture consistency.

**Why this matters:**
- Promotes **maintainability**, **scalability**, **testability**, and **lower cognitive load** for teams.
