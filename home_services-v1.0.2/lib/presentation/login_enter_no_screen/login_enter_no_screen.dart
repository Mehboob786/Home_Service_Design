import 'controller/login_enter_no_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class LoginEnterNoScreen extends GetWidget<LoginEnterNoController> {
  LoginEnterNoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(
                          height: 411.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildLogoAndBackground(),
                                Obx(() => CustomPhoneNumber(
                                    country: controller.selectedCountry.value,
                                    controller:
                                        controller.phoneNumberController,
                                    onTap: (Country value) {
                                      controller.selectedCountry.value = value;
                                    }))
                              ])),
                      SizedBox(height: 16.v),
                      Text("msg_an_otp_will_be_sent".tr,
                          style: CustomTextStyles.bodySmallGray60001),
                      SizedBox(height: 39.v),
                      CustomElevatedButton(
                          height: 55.v,
                          text: "lbl_login_sign_up".tr,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          buttonTextStyle:
                              CustomTextStyles.titleMediumSFProDisplayOnPrimary,
                          onPressed: () {
                            onTapLoginSignUp();
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLogoAndBackground() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 10.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgLogoAndBg),
                    fit: BoxFit.cover)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 86.v),
              Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.h, vertical: 65.v),
                  decoration: AppDecoration.fillBlue5002.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder143),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 33.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 56.v,
                            width: 90.h),
                        SizedBox(height: 24.v),
                        Text("lbl_mhome_services".tr,
                            style: theme.textTheme.displaySmall)
                      ]))
            ])));
  }

  /// Navigates to the enterOtpScreen when the action is triggered.
  onTapLoginSignUp() {
    Get.toNamed(
      AppRoutes.enterOtpScreen,
    );
  }
}
