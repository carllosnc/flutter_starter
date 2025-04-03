import 'package:reactive_preferences/rp_container.dart';

class ThemePreference {
  static const key = "THEME";

  static init() {
    RP.initValue(
      init: () => RP.prefs.setBool(key, true),
      current: () => RP.prefs.getBool(key),
    );
  }

  static get value => RP.prefs.getBool(key);

  static toggleTheme(bool theme) {
    RP.action((prefs) {
      prefs.setBool(key, theme);
    });
  }
}
