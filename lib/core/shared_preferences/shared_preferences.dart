import 'package:shared_preferences/shared_preferences.dart';
import '/notifiers/notifiers.dart';

loadPreferences() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  //get from shared preferences
  final bool? lightTheme = prefs.getBool('lightTheme');

  // set to notifiers
  if (lightTheme != null) {
    ThemeNotifier().lightTheme.value = lightTheme;
  }
}
