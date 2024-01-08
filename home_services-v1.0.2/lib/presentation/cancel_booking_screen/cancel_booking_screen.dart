import 'controller/cancel_booking_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_radio_button.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

class CancelBookingScreen extends GetWidget<CancelBookingController> {
  const CancelBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Column(children: [
                  SizedBox(height: 21.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildDiamondFacialRow(),
                                SizedBox(height: 24.v),
                                _buildReasonForCancelColumn(),
                                SizedBox(height: 17.v),
                                _buildGroup328RadioGroup(),
                                SizedBox(height: 20.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.h),
                                    child: CustomTextFormField(
                                        controller:
                                            controller.commentController,
                                        hintText: "msg_describe_a_problem".tr,
                                        hintStyle:
                                            CustomTextStyles.bodyMediumGray500,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 8))
                              ]))))
                ])),
            bottomNavigationBar: _buildCancelNowButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClock,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapClock();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_cancel_booking".tr));
  }

  /// Section Widget
  Widget _buildDiamondFacialRow() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage23100x100,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  radius: BorderRadius.circular(14.h)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 25.v),
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
                              child: Text("lbl_2_hrs".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 5.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.gray60001,
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("msg_includes_dummy_info".tr,
                                      style: theme.textTheme.bodyMedium))
                            ])
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildReasonForCancelColumn() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
        decoration: AppDecoration.fillGray,
        child: Text("msg_reason_for_cancellation".tr.toUpperCase(),
            style: CustomTextStyles.labelLargeInterGray60001Bold));
  }

  /// Section Widget
  Widget _buildGroup328RadioGroup() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Obx(() => Column(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: CustomRadioButton(
                          text: "msg_a_reason_here_for".tr,
                          value: controller
                              .cancelBookingModelObj.value.radioList.value[0],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 14.v),
                      child: CustomRadioButton(
                          text: "msg_a_reason_here_for2".tr,
                          value: controller
                              .cancelBookingModelObj.value.radioList.value[1],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 13.v, right: 16.h),
                      child: CustomRadioButton(
                          text: "msg_a_reason_here_for".tr,
                          value: controller
                              .cancelBookingModelObj.value.radioList.value[2],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 14.v),
                      child: CustomRadioButton(
                          text: "msg_a_reason_here_for2".tr,
                          value: controller
                              .cancelBookingModelObj.value.radioList.value[3],
                          groupValue: controller.radioGroup.value,
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          }))
                ]))));
  }

  /// Section Widget
  Widget _buildCancelNowButton() {
    return CustomElevatedButton(
        text: "lbl_cancel_now".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.bodyLargeGray60002);
  }

  /// Navigates to the bookingsDetailPageOneScreen when the action is triggered.
  onTapClock() {
    Get.toNamed(
      AppRoutes.bookingsDetailPageOneScreen,
    );
  }
}
