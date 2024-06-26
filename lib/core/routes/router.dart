import 'package:go_router/go_router.dart';
import '/imports.dart';

bool firstTime = sharedPreferences.prefs.getBool('welcome') ?? true;

final router = GoRouter(
  routes: [
    if (firstTime)
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const WelcomePage();
        },
      ),
    GoRoute(
      path: firstTime ? '/home' : '/',
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) {
        return const SettingsPage();
      },
    ),
  ],
);
