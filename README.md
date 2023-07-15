# Flutter Starter

### Layers

```
📂 lib
├──📁 components
├──📁 core
├──📁 data
├──📁 domain
├──📁 views
📂 tests
├──📁 integration_tests
├──📁 unit_tests
├──📁 widget_tests
```
- **core**: routes, themes, extras
- **data**: repositories, services
- **domain**: entities, contracts
- **components**: shared widgets
- **views**: frontend for features
- **test**: units

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