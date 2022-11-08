import 'package:flutter/material.dart';
import 'package:dokany/core/app_mediaquery.dart';
import 'package:flutter/services.dart';

// TextFormfaied
Widget defaultTextFormFailed({
  required BuildContext context,
  required String lable,
  required IconData perfixIcon,
  IconData? suffixIcon,
  required TextInputAction textInputAction,
  required TextInputType textInputType,
  required FormFieldValidator<String>? validator,
}) {
  return TextFormField(
      style: TextStyle(
        fontSize: context.width * 0.04
      ),
      decoration: InputDecoration(
        labelText: lable,
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        prefixIcon: Icon(
          perfixIcon,
          size: context.width * 0.05,
        ),
        suffixIcon: Icon(
          suffixIcon,
          size: context.width * 0.05,
        ),
      ),
      textInputAction: textInputAction,
      keyboardType: textInputType,
      validator: validator);
}

// Button
Widget defaultEleveButton(
    {required String title, required BuildContext context,
    required VoidCallback? onTap
    }) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(context.width * 0.03)),
        onPressed: onTap,
        child: Text(title)),
  );
}

//Text
Widget defaultText({
  required String title,
  required Color color,
  FontWeight? fontWeight,
  required double fontsize,
}) {
  return Text(
    title,
    style: TextStyle(color: color, fontWeight: fontWeight, fontSize: fontsize),
  );
}
