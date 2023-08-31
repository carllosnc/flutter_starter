# Flutter Starter


[![Flutter Starter](https://github.com/C4co/flutter_starter/actions/workflows/dart.yml/badge.svg)](https://github.com/C4co/flutter_starter/actions/workflows/dart.yml)


### Clone

```
gh repo clone C4co/flutter_starter app_name
```

### Layers

```
📂 lib
├──📁 components
├──📁 core
├──📁 data
├──📁 domain
├──📁 notifiers
├──📁 pages
📂 tests
```
- **components**: shared widgets
- **core**: routes, themes, extras, preferences
- **data**: repositories, services
- **domain**: entities, contracts
- **notifiers**: global states
- **pages**: apo pages
- **test**: units, widget tests

### Commands

Build runner
```
flutter pub run build_runner build --delete-conflicting-outputs
```

Launcher icon
```
flutter pub run flutter_launcher_icons
```

Spash
```
dart run flutter_native_splash:create
```

---

### License

MIT © [Carlos Costa](https://github.com/C4co)