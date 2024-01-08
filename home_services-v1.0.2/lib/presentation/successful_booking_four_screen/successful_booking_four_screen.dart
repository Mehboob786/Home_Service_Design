import 'controller/successful_booking_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_icon_button.dart';

class SuccessfulBookingFourScreen
    extends GetWidget<SuccessfulBookingFourController> {
  const SuccessfulBookingFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFrameGreen400,
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    margin: EdgeInsets.only(top: 14.v)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 93.h, bottom: 94.v),
                                    child: CustomIconButton(
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        decoration:
                                            IconButtonStyleHelper.fillGrayTL10,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFrameGray60001)))
                              ]))),
                  SizedBox(height: 19.v),
                  Text("msg_booking_successful".tr,
                      style: CustomTextStyles.titleLargeInterGreen400),
                  SizedBox(height: 18.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_dear_harry_styles2".tr,
                            style: CustomTextStyles.bodyLargeInterGray900),
                        TextSpan(
                            text: "lbl_diamond_facial".tr,
                            style: CustomTextStyles.titleMediumBold_1),
                        TextSpan(
                            text: "msg_for_the_upcoming".tr,
                            style: CustomTextStyles.bodyLargeInterGray900),
                        TextSpan(
                            text: "msg_12_dec_our_service_provider".tr,
                            style: CustomTextStyles.titleMediumBold_1)
                      ]),
                      textAlign: TextAlign.left),
                  Spacer(),
                  _buildDiamondFacialSection()
                ])),
            bottomNavigationBar: _buildViewBookingSection()));
  }

  /// Section Widget
  Widget _buildDiamondFacialSection() {
    return Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage23100x100,
              height: 100.adaptSize,
              width: 100.adaptSize,
              radius: BorderRadius.circular(14.h)),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 12.v, bottom: 25.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_diamond_facial".tr,
                        style: theme.textTheme.titleSmall),
                    SizedBox(height: 8.v),
                    Row(children: [
                      Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 6.v),
                          decoration: BoxDecoration(
                              color: appTheme.gray60001,
                              borderRadius: BorderRadius.circular(2.h))),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("lbl_1_hr".tr,
                              style: theme.textTheme.bodyMedium))
                    ]),
                    SizedBox(height: 3.v),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              margin: EdgeInsets.only(top: 5.v, bottom: 7.v),
                              decoration: BoxDecoration(
                                  color: appTheme.gray60001,
                                  borderRadius: BorderRadius.circular(2.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("msg_includes_dummy_info".tr,
                                  style: theme.textTheme.bodyMedium))
                        ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildViewBookingSection() {
    return CustomElevatedButton(
        text: "lbl_view_booking".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v),
        onPressed: () {
          onTapViewBookingSection();
        });
  }

  /// Navigates to the bookingsUpcomingContainerScreen when the action is triggered.
  onTapViewBookingSection() {
    Get.toNamed(
      AppRoutes.bookingsUpcomingContainerScreen,
    );
  }
}
