import 'controller/onboarding_screen_1_real_images_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_trailing_button.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen1RealImagesOneScreen
    extends GetWidget<OnboardingScreen1RealImagesOneController> {
  const OnboardingScreen1RealImagesOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Column(children: [
                  Column(children: [
                    _buildOnboardingView(),
                    SizedBox(height: 59.v),
                    Container(
                        width: 308.h,
                        margin: EdgeInsets.only(left: 32.h, right: 33.h),
                        child: Text("msg_we_provide_professional".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineMedium!
                                .copyWith(height: 1.43)))
                  ]),
                  SizedBox(height: 53.v),
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
                              dotWidth: 6.h))),
                  SizedBox(height: 50.v),
                  CustomIconButton(
                      height: 55.adaptSize,
                      width: 55.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL16,
                      onTap: () {
                        onTapBtnIconButton();
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFrameOnprimary55x55)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(actions: [
      AppbarTrailingButton(
          margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v))
    ]);
  }

  /// Section Widget
  Widget _buildOnboardingView() {
    return SizedBox(
        height: 328.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 328.adaptSize,
                  width: 328.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.gray10001,
                      borderRadius: BorderRadius.circular(164.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgImage2358,
              height: 287.v,
              width: 375.h,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the onboardingScreen2RealImagesScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.onboardingScreen2RealImagesScreen,
    );
  }
}
