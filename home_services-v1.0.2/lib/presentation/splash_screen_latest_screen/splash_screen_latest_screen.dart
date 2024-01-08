import 'controller/splash_screen_latest_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

class SplashScreenLatestScreen extends GetWidget<SplashScreenLatestController> {
  const SplashScreenLatestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(-0.56, 0.52),
                        end: Alignment(0.5, -0.56),
                        colors: [
                      theme.colorScheme.primary,
                      appTheme.indigo500C4
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 56.v,
                              width: 90.h),
                          SizedBox(height: 24.v),
                          Text("lbl_mhome_services".tr,
                              style: CustomTextStyles.displaySmallOnPrimary)
                        ])))));
  }
}
