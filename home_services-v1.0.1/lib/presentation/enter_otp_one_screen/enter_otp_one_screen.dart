import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_pin_code_text_field.dart';

class EnterOtpOneScreen extends StatelessWidget {
  const EnterOtpOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 119.v),
                child: Column(children: [
                  Text("Enter verification code",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 17.v),
                  Text("We have sent you a 4 digit verification code on",
                      style: CustomTextStyles.bodySmallGray60001),
                  SizedBox(height: 6.v),
                  Text("+91 6390168836",
                      style: CustomTextStyles.titleSmallErrorContainer),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.only(left: 48.h, right: 47.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {})),
                  Spacer(flex: 48),
                  CustomElevatedButton(
                      height: 55.v,
                      text: "Login/Sign up",
                      buttonTextStyle:
                          CustomTextStyles.titleMediumSFProDisplayOnPrimary,
                      onPressed: () {
                        onTapLoginSignUp(context);
                      }),
                  Spacer(flex: 51)
                ]))));
  }

  /// Navigates to the categoriesSalonForWomenScreen when the action is triggered.
  onTapLoginSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.categoriesSalonForWomenScreen);
  }
}
