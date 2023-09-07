import 'package:go_router/go_router.dart';
import 'package:login_page/screens/login_screen.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'login_screen',
      path: '/',
      builder: (context, state) => const LoginScreen(),
    )
  ],
);