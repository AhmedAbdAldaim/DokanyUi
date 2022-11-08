import 'package:dokany/core/app_mediaquery.dart';
import 'package:dokany/core/widget_components.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تسجيل'),
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
                  SizedBox(height: context.height * 0.03),
                  IntlPhoneField(
                    style: TextStyle(fontSize: context.width * 0.04),
                    decoration: InputDecoration(
                      labelText: 'رقم الهاتف',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    dropdownIcon: Icon(Icons.arrow_drop_down),
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
                      lable: 'الإسم',
                      perfixIcon: Icons.person,
                      context: context,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.name,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '';
                        }
                        return null;
                      }),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                 
                  defaultTextFormFailed(
                      context: context,
                      lable: 'البريد الإلكتروني',
                      perfixIcon: Icons.email,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '';
                        }
                        return null;
                      }),
   
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
                    height: context.height * 0.02,
                  ),
                  defaultTextFormFailed(
                      context: context,
                      lable: 'تأكيد كلمة السر',
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
                  defaultEleveButton(title: 'تسجيل', context: context,
                   onTap: () {  }),
                  SizedBox(
                    height: context.height * 0.02,
                  ),
                  Wrap(
                    runSpacing: context.height * 0.01, 
                    children: [
                      defaultText(
                          title: 'بالإستمرار انا اقرأت وأوافق على ',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontsize: context.width * 0.03),
                     defaultText(
                          title: 'شروط الإستخدام',
                          color: Colors.customGreen,
                          fontWeight: FontWeight.bold,
                          fontsize: context.width * 0.03),  
                    defaultText(
                          title: 'سياسة الخصوصية',
                          color: Colors.customGreen,
                          fontWeight: FontWeight.bold,
                          fontsize: context.width * 0.03),     
                    ],
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
