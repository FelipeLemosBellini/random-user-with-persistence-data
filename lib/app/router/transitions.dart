import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class Transitions {
  static CustomTransitionPage<dynamic> customTransitionPage(
    Widget child,
    GoRouterState state,
  ) {
    return CustomTransitionPage(
      key: ValueKey(state.uri.path),
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        bool isPushing = state.fullPath == state.uri.path;

        return SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: isPushing ? const Offset(1, 0) : const Offset(-1, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeInOut)),
          ),
          child: child,
        );
      },
    );
  }
}
