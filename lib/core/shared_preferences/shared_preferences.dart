import 'package:shared_preferences/shared_preferences.dart';

class _SharedPrefs {
  late final SharedPreferences prefs;

  loadWelcome(SharedPreferences prefs) {
    final bool? welcome = prefs.getBool('welcome');

    if (welcome == null) {
      prefs.setBool('welcome', true);
    }
  }

  loadPreferences() async {
    prefs = await SharedPreferences.getInstance();

    loadWelcome(prefs);
  }
}

var sharedPreferences = _SharedPrefs();
