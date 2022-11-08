import 'package:dokany/config/app_route.dart';
import 'package:dokany/core/app_mediaquery.dart';
import 'package:dokany/core/widget_components.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5)).then((value) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.login_screen,
        (route) => false,
      );
    });
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: context.height * 0.2,
              width: context.width * 0.3,
            ),
            SizedBox(height: context.height * 0.03),
            defaultText(
                title: 'دكاني',
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
                fontsize: context.width * 0.04),
            SizedBox(height: context.height * 0.02),
            Card(
                color: Colors.amber,
                elevation: 0.0,
                child: defaultText(
                    title: 'كل ما تحتاجه في تطبيق واحد',
                    color: Colors.black,
                    fontsize: context.width * 0.03)),
          ],
        ),
      )),
    );
  }
}
