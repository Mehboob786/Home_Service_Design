import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

class SplashScreenLatestScreen extends StatefulWidget {
  const SplashScreenLatestScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenLatestScreenState createState() => _SplashScreenLatestScreenState();
}

class _SplashScreenLatestScreenState extends State<SplashScreenLatestScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacementNamed(
        context,
        AppRoutes.loginEnterNoScreen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.56, 0.52),
              end: Alignment(0.5, -0.56),
              colors: [
                theme.colorScheme.primary,
                appTheme.indigo500C4,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 56.v,
                  width: 90.h,
                ),
                SizedBox(height: 24.v),
                Text(
                  "Home Services",
                  style: CustomTextStyles.displaySmallOnPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
