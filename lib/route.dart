import 'package:flutter/material.dart';
import 'package:flutter_netflix_ui/detail_page.dart';
import 'package:flutter_netflix_ui/forgot_password_page.dart';
import 'package:flutter_netflix_ui/login_page.dart';
import 'package:flutter_netflix_ui/netFlix_Main_page.dart';
import 'package:flutter_netflix_ui/signup_page.dart';

import 'main.dart';

Route onGenerateRoute(RouteSettings settings) {
  if (settings.name == MyHomePage.pageName) {
    return MaterialPageRoute(
      builder: (context) => const MyHomePage(title: 'Home page'),
    );
  } else if (settings.name == SignUpPage.pageName) {
    return ScaleFadeTransition(page: const SignUpPage(), settings: settings);
  } else if (settings.name == LoginPage.pageName) {
    return ScaleFadeTransition(page: const LoginPage(), settings: settings);
  } else if (settings.name == ForgotPasswordPage.pageName) {
    return ScaleFadeTransition(page: const ForgotPasswordPage());
  } else if (settings.name == NetflixMainPage.pageName) {
    return ScaleFadeTransition(page: NetflixMainPage(), settings: settings);
  } else {
    return ScaleFadeTransition(page: DetailsPage());
  }
}

class ScaleFadeTransition extends PageRouteBuilder {
  ScaleFadeTransition({required this.page, RouteSettings? settings})
      : super(
            pageBuilder: (context, animation, reverseAnimation) => page,
            transitionDuration: const Duration(milliseconds: 500),
            settings: settings,
            transitionsBuilder: (context, animation, reverseAnimation, child) =>
                FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: CurvedAnimation(
                        parent: animation, curve: Curves.easeIn),
                    child: child,
                  ),
                ));

  final Widget page;
}
