import 'controller/onboarding_screen_3_real_images_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen3RealImagesScreen
    extends GetWidget<OnboardingScreen3RealImagesController> {
  const OnboardingScreen3RealImagesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Column(
                  children: [
                    _buildCircleImage(),
                    SizedBox(height: 60.v),
                    Container(
                      width: 318.h,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        right: 4.h,
                      ),
                      child: Text(
                        "msg_get_beauty_parlor".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium!.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 52.v),
              SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 6,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: appTheme.blue5001,
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
              ),
              SizedBox(height: 50.v),
              CustomIconButton(
                height: 55.adaptSize,
                width: 55.adaptSize,
                padding: EdgeInsets.all(16.h),
                decoration: IconButtonStyleHelper.fillPrimaryTL16,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrameOnprimary55x55,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCircleImage() {
    return Container(
      padding: EdgeInsets.all(21.h),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder164,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgImage2359,
        height: 286.adaptSize,
        width: 286.adaptSize,
        radius: BorderRadius.circular(
          143.h,
        ),
      ),
    );
  }
}
