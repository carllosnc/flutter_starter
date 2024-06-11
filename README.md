# Flutter Starter

>Opinated Flutter starter template

[![Flutter Starter](https://github.com/carllosnc/flutter_starter/actions/workflows/dart.yml/badge.svg)](https://github.com/carllosnc/flutter_starter/actions/workflows/dart.yml)

## Clone

```
gh repo clone C4co/flutter_starter app_name
```

## Layers

- **components**: shared widgets
- **core**: routes, themes, extras, preferences
- **data**: repositories, services
- **domain**: entities, contracts
- **notifiers**: global states
- **pages**: app pages, features
- **test**: units, widget tests

## What's inside

- go routes
- json serialize
- shared preferences
- font_awesome_flutter
- intl

## Commands

Build runner
```
dart run build_runner build --delete-conflicting-outputs
```

Launcher icon
```
dart run flutter_launcher_icons
```

Spash
```
dart run flutter_native_splash:create
```

---

## License

MIT © [Carlos Costa](https://github.com/carllosnc)
