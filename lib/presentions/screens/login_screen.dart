import 'package:dokany/config/app_route.dart';
import 'package:dokany/core/app_mediaquery.dart';
import 'package:dokany/core/widget_components.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تسجيل دخول'),
        ),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(context.width * 0.1),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: context.height * 0.1,
                    width: context.width * 0.3,
                  ),
                  SizedBox(height: context.height * 0.04),
                  IntlPhoneField(
                    style: TextStyle(fontSize: context.width * 0.04),
                    decoration: InputDecoration(
                      labelText: 'رقم الهاتف',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    initialCountryCode: 'SD',
                    textAlign: TextAlign.start,
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  defaultTextFormFailed(
                      context: context,
                      lable: 'كلمة السر',
                      perfixIcon: Icons.lock,
                      suffixIcon: Icons.remove_red_eye,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: context.height * 0.03,
                  ),
                  defaultEleveButton(
                      title: 'تسجيل دخول',
                      context: context,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.home_screen);
                      }),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.register_screen);
                    },
                    child: defaultText(
                        title: 'ليس لديك حساب ؟ سجل الآن',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontsize: context.width * 0.03),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
