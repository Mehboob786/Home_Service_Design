import 'controller/cancel_anyway_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CancelAnywayBottomsheet extends StatelessWidget {
  CancelAnywayBottomsheet(this.controller, {Key? key}) : super(key: key);

  CancelAnywayController controller;

  @override
  Widget build(BuildContext context) {
    return _buildCancelAnywaySection();
  }

  /// Section Widget
  Widget _buildCancelAnywaySection() {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 36.v),
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrowningFace,
                      height: 50.adaptSize,
                      width: 50.adaptSize),
                  SizedBox(height: 16.v),
                  Text("msg_are_you_sure_about".tr,
                      style: CustomTextStyles.bodyLargeInterGray90018_1),
                  SizedBox(height: 11.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_you_can_always".tr,
                            style: CustomTextStyles.bodyLargeInterGray90018),
                        TextSpan(
                            text: "lbl_reshedule2".tr,
                            style: CustomTextStyles.titleMedium18_1),
                        TextSpan(
                            text: "lbl_it".tr,
                            style: CustomTextStyles.bodyLargeInterGray90018)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 44.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                        child: CustomElevatedButton(
                            text: "lbl_cancel_anyway".tr,
                            margin: EdgeInsets.only(right: 6.h),
                            buttonStyle: CustomButtonStyles.fillBlack,
                            buttonTextStyle: CustomTextStyles
                                .titleSmallSFProDisplayOnPrimary,
                            onPressed: () {
                              onTapCancelAnyway();
                            })),
                    Expanded(
                        child: CustomElevatedButton(
                            text: "lbl_reschedule".tr,
                            margin: EdgeInsets.only(left: 6.h),
                            buttonTextStyle: CustomTextStyles
                                .titleSmallSFProDisplayOnPrimary))
                  ])
                ])));
  }

  /// Navigates to the bookingCancelledSuccessfullyMsgScreen when the action is triggered.
  onTapCancelAnyway() {
    Get.toNamed(
      AppRoutes.bookingCancelledSuccessfullyMsgScreen,
    );
  }
}
