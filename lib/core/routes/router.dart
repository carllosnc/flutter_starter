import 'package:go_router/go_router.dart';
import '/imports.dart';

final router = GoRouter(
  routes: [
    if (WelcomePreference.value)
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const WelcomePage();
        },
      ),
    GoRoute(
      path: WelcomePreference.value ? '/home' : '/',
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
