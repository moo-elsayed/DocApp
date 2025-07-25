import 'package:flutter/material.dart';
import 'package:flutter_project/core/routing/routes.dart';
import 'package:flutter_project/features/auth/presentation/views/login_view.dart';
import 'package:flutter_project/features/onboarding/presentation/views/onboarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for this ${settings.name}'),
            ),
          ),
        );
    }
  }
}
