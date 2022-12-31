import 'package:flutter/material.dart';

const MaterialColor primaryColorShades = MaterialColor(
  0xFF0052F2,
  <int, Color>{
    50: Color(0xFFE2F3FF),
    100: Color(0xFFBED2FF),
    200: Color(0xFF90ACFF),
    300: Color(0xFF658AFF),
    400: Color(0xFF3E6DFF),
    500: Color(0xFF0052F2),
    600: Color(0xFF0049E8),
    700: Color(0xFF003FD9),
    800: Color(0xFF0034CD),
    900: Color(0xFF001BB3),
  },
);

class ProjectText {
  static TextStyle text = const TextStyle(
    fontSize: 16,
    height: 1.5,
    color: Color(0xFF5D5D5D),
  );
  static TextStyle title = const TextStyle(
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
}

var basicTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primaryColorShades,
  scaffoldBackgroundColor: Colors.grey.shade200,
  cardTheme: CardTheme(
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    color: Colors.white,
  ),
  appBarTheme: const AppBarTheme(elevation: 0),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      textStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
      shape: const StadiumBorder(),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    iconColor: Colors.grey.shade400,
    fillColor: Colors.black,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    contentPadding: const EdgeInsets.fromLTRB(20, 14, 20, 14),
  ),
);
