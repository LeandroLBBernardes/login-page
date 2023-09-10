import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_page/screens/login_screen.dart';

import '../screens/home_screen.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'login_screen',
      path: '/',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionDuration: const Duration(milliseconds: 600),
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      name: 'home_screen',
      path: '/home',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionDuration: const Duration(milliseconds: 600),
          key: state.pageKey,
          child: const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            
            return FadeTransition(
              opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);