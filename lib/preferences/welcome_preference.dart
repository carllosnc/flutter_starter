import 'package:reactive_preferences/reactive_preferences.dart';

class WelcomePreference {
  static const key = "WELCOME";

  static init() {
    RP.initValue(
      init: () => RP.prefs.setBool(key, false),
      current: () => RP.prefs.getBool(key),
    );
  }

  static get value => RP.prefs.getBool(key);

  static firstTime() {
    RP.action((prefs) {
      prefs.setBool(key, false);
    });
  }
}
