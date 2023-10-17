import 'package:shared_preferences/shared_preferences.dart';
import '/imports/app.dart';

class _SharedPrefs {
  late final SharedPreferences prefs;

  loadTheme(SharedPreferences prefs) {
    final bool? lightTheme = prefs.getBool('lightTheme');

    if (lightTheme != null) {
      themeGlobal.lightTheme.value = lightTheme;
    }
  }

  loadWelcome(SharedPreferences prefs) {
    final bool? welcome = prefs.getBool('welcome');

    if (welcome == null) {
      prefs.setBool('welcome', true);
    }
  }

  loadPreferences() async {
    prefs = await SharedPreferences.getInstance();

    loadTheme(prefs);
    loadWelcome(prefs);
  }
}

var sharedPreferences = _SharedPrefs();
