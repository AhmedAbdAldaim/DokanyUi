import 'package:dokany/core/app_colors.dart';
import 'package:dokany/core/app_mediaquery.dart';
import 'package:dokany/core/widget_components.dart';
import 'package:flutter/material.dart';

class BuildContinerHome extends StatelessWidget {
  final String title;
  final String content;
  final GestureTapCallback ontap;
  const BuildContinerHome(
      {super.key, required this.title, required this.content, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.all(context.width * 0.08),
        child: Column(
          children: [
            defaultText(
                title: title,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontsize: context.width * 0.04),
            SizedBox(height: context.height * 0.03),
            Card(
              elevation: 0.0,
              color: Colors.grey[100],
              child: defaultText(
                  title: content,
                  color: AppColors.primayColor,
                  fontsize: context.width * 0.03),
            ),
          ],
        ),
      ),
    );
  }
}
