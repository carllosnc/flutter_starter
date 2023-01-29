import 'package:go_router/go_router.dart';
import '/pages/pages.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  )
]);
