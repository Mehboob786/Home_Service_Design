import 'controller/enter_otp_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_pin_code_text_field.dart';

class EnterOtpOneScreen extends GetWidget<EnterOtpOneController> {
  const EnterOtpOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 119.v),
                child: Column(children: [
                  Text("msg_enter_verification".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 17.v),
                  Text("msg_we_have_sent_you".tr,
                      style: CustomTextStyles.bodySmallGray60001),
                  SizedBox(height: 6.v),
                  Text("lbl_91_6390168836".tr,
                      style: CustomTextStyles.titleSmallErrorContainer),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.only(left: 48.h, right: 47.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  Spacer(flex: 48),
                  CustomElevatedButton(
                      height: 55.v,
                      text: "lbl_login_sign_up".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumSFProDisplayOnPrimary,
                      onPressed: () {
                        onTapLoginSignUp();
                      }),
                  Spacer(flex: 51)
                ]))));
  }

  /// Navigates to the categoriesSalonForWomenScreen when the action is triggered.
  onTapLoginSignUp() {
    Get.toNamed(
      AppRoutes.categoriesSalonForWomenScreen,
    );
  }
}
