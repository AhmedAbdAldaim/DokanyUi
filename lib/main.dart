import 'package:dokany/config/app_route.dart';
import 'package:dokany/config/app_theme.dart';
import 'package:dokany/presentions/screens/login_screen.dart';
import 'package:dokany/presentions/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      onGenerateRoute: AppRoutes.onGenerate,
    );
  }
}

