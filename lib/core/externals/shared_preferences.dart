import 'package:shared_preferences/shared_preferences.dart';
import '/imports.dart';

class _SharedPrefs {
  late final SharedPreferences prefs;

  loadPreferences() async {
    prefs = await SharedPreferences.getInstance();
    final bool? lightTheme = prefs.getBool('lightTheme');

    //default valur to theme
    themeNotifier.setLightTheme(lightTheme ?? true);
  }
}

var sharedPreferences = _SharedPrefs();
