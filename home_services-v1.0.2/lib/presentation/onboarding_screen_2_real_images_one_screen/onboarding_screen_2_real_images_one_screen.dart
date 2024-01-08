import 'controller/onboarding_screen_2_real_images_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_trailing_button.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen2RealImagesOneScreen
    extends GetWidget<OnboardingScreen2RealImagesOneController> {
  const OnboardingScreen2RealImagesOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 3.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Column(
                  children: [
                    _buildImage2(),
                    SizedBox(height: 59.v),
                    Container(
                      width: 298.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 13.h,
                      ),
                      child: Text(
                        "msg_easy_service_booking".tr,
                        maxLines: 2,
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
              SizedBox(height: 93.v),
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      actions: [
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildImage2() {
    return Container(
      padding: EdgeInsets.all(21.h),
      decoration: AppDecoration.fillGray10001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder164,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse235286x286,
        height: 286.adaptSize,
        width: 286.adaptSize,
        radius: BorderRadius.circular(
          143.h,
        ),
      ),
    );
  }
}
