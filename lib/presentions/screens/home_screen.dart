import 'package:dokany/config/app_route.dart';
import 'package:dokany/core/app_colors.dart';
import 'package:dokany/presentions/widgets/build_continer_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dokany/core/app_mediaquery.dart';

import '../../core/widget_components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('اختر الخدمة'),
          actions: [Switch.adaptive(value: false, onChanged: (val) {})],
        ),
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(context.width * 0.07),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildContinerHome(
                    title: 'بقالة دكاني',
                    content: 'سوبر ماركت من دكاني',
                    ontap: () {
                      Navigator.pushNamed(context, AppRoutes.product_dept_screen);
                    },
                  ),
                  SizedBox(
                    height: context.width * 0.06,
                  ),
                  BuildContinerHome(
                    title: 'متجر الجملة',
                    content: 'كل ما تحتاجه بسعر الجملة',
                    ontap: () {},
                  ),
                  SizedBox(
                    height: context.width * 0.06,
                  ),
                  BuildContinerHome(
                    title: 'رصيد',
                    content: 'خدمات الرصيد وتوصيل فوري برسائل نصية',
                    ontap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
