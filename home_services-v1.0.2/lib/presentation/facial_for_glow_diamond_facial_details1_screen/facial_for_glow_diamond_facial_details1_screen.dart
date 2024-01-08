import 'controller/facial_for_glow_diamond_facial_details1_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FacialForGlowDiamondFacialDetails1Screen
    extends GetWidget<FacialForGlowDiamondFacialDetails1Controller> {
  const FacialForGlowDiamondFacialDetails1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 782.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildArrowLeft(),
                        Divider(),
                        SizedBox(height: 15.v),
                        _buildPearlFacial(),
                        SizedBox(height: 16.v),
                        _buildDiamondFacial()
                      ])),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: AppDecoration.fillBlack,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                _buildForty(),
                                _buildTwentyOne()
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeft() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 5.v),
              onTap: () {
                onTapImgArrowLeft();
              }),
          Padding(
              padding: EdgeInsets.only(left: 84.h, top: 5.v),
              child: Text("lbl_facial_for_glow".tr,
                  style: CustomTextStyles.titleLargeBlack900))
        ]));
  }

  /// Section Widget
  Widget _buildPearlFacial() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage24,
                        height: 148.adaptSize,
                        width: 148.adaptSize,
                        radius: BorderRadius.circular(14.h)),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_pearl_facial".tr,
                            style: CustomTextStyles.titleMediumBlack900)),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Row(children: [
                          Text("lbl_599".tr,
                              style: CustomTextStyles.titleSmallPrimary_1),
                          Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text("lbl_899".tr,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                      decoration: TextDecoration.lineThrough)))
                        ])),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFrame))),
                    SizedBox(height: 8.v)
                  ])),
          Container(
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage45,
                        height: 148.adaptSize,
                        width: 148.adaptSize,
                        radius: BorderRadius.circular(14.h)),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_gold_facial".tr,
                            style: CustomTextStyles.titleMediumBlack900)),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Row(children: [
                          Text("lbl_699".tr,
                              style: CustomTextStyles.titleSmallPrimary_1),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text("lbl_999".tr,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                      decoration: TextDecoration.lineThrough)))
                        ])),
                    SizedBox(height: 15.v),
                    Padding(
                        padding: EdgeInsets.only(right: 8.h),
                        child: CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFrame))),
                    SizedBox(height: 8.v)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDiamondFacial() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: EdgeInsets.only(right: 179.h),
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage23,
                        height: 147.v,
                        width: 148.h,
                        radius: BorderRadius.circular(14.h)),
                    SizedBox(height: 16.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_diamond_facial".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: _buildPrice(
                            priceText: "lbl_799".tr,
                            oldPriceText: "lbl_1299".tr)),
                    SizedBox(height: 15.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 8.h)),
                    SizedBox(height: 8.v)
                  ])),
          SizedBox(height: 33.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 141.h, vertical: 13.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Text("lbl_proceed".tr,
                  style: CustomTextStyles.titleMediumSFProDisplayOnPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildForty() {
    return SizedBox(
        height: 196.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 196.v,
              width: 375.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 4.v,
                  margin: EdgeInsets.only(bottom: 16.v),
                  child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 3,
                      effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: theme.colorScheme.onPrimary,
                          dotHeight: 4.v,
                          dotWidth: 32.h))))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyOne() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 30.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("lbl_diamond_facial".tr,
                      style: CustomTextStyles.titleMediumBold_2),
                  SizedBox(height: 8.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
                    Container(
                        height: 15.v,
                        width: 49.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_4_8_23k".tr,
                                  style: CustomTextStyles
                                      .labelLargePrimaryContainer)),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_4_8_23k".tr,
                                  style: theme.textTheme.labelLarge))
                        ]))
                  ]),
                  SizedBox(height: 7.v),
                  _buildPrice(
                      priceText: "lbl_799".tr, oldPriceText: "lbl_1299".tr),
                  SizedBox(height: 15.v),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        margin: EdgeInsets.only(top: 5.v, bottom: 7.v),
                        decoration: BoxDecoration(
                            color: appTheme.gray60001,
                            borderRadius: BorderRadius.circular(2.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_45_mins".tr,
                            style: theme.textTheme.bodyMedium))
                  ])
                ]),
                CustomElevatedButton(
                    height: 29.v,
                    width: 93.h,
                    text: "lbl_added".tr,
                    margin: EdgeInsets.only(bottom: 70.v),
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallSFProDisplayGreen400)
              ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(right: 84.h),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(top: 4.v, bottom: 8.v),
                    decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(2.h))),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("msg_for_all_skin_types".tr,
                        style: theme.textTheme.bodyMedium))
              ])),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(right: 54.h),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(top: 4.v, bottom: 8.v),
                    decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(2.h))),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("msg_6_step_process".tr,
                        style: theme.textTheme.bodyMedium))
              ])),
          SizedBox(height: 40.v)
        ]));
  }

  /// Common widget
  Widget _buildPrice({
    required String priceText,
    required String oldPriceText,
  }) {
    return Row(children: [
      Text(priceText,
          style: CustomTextStyles.titleSmallPrimary_1
              .copyWith(color: theme.colorScheme.primary)),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(oldPriceText,
              style: theme.textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: appTheme.gray60001)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
