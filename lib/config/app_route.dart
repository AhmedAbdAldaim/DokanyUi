import 'package:dokany/presentions/screens/login_screen.dart';
import 'package:dokany/presentions/screens/products_dept_screen.dart';
import 'package:dokany/presentions/screens/products_screen.dart';
import 'package:dokany/presentions/screens/register_screen.dart';
import 'package:dokany/presentions/screens/splash_screen.dart';
import 'package:dokany/presentions/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash_screen = '/';
  static const String login_screen = '/login_screen';
  static const String register_screen = '/register_screen';
  static const String home_screen = '/home_screen';
  static const String product_dept_screen = '/product_dept_screen';
  static const String product_screen = '/product_screen';
  static Route<dynamic>? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash_screen:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case AppRoutes.login_screen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case AppRoutes.register_screen:
        return MaterialPageRoute(builder: (context) => RegisterScreen());
      case AppRoutes.home_screen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppRoutes.product_dept_screen:
        return MaterialPageRoute(builder: (context) => ProductsDeptScreen());
      case AppRoutes.product_screen:
         return MaterialPageRoute(builder: (context) => ProductScreen());

      default:
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}
