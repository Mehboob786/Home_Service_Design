import 'controller/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_iconbutton.dart';
import 'package:home_services/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/presentation/add_address_final_one_bottomsheet/add_address_final_one_bottomsheet.dart';
import 'package:home_services/presentation/add_address_final_one_bottomsheet/controller/add_address_final_one_controller.dart';
import 'package:home_services/presentation/request_now_select_time_bottomsheet/request_now_select_time_bottomsheet.dart';
import 'package:home_services/presentation/request_now_select_time_bottomsheet/controller/request_now_select_time_controller.dart';

class SummaryScreen extends GetWidget<SummaryController> {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildFrequentlyAddedStack(),
                              SizedBox(height: 32.v),
                              _buildAddStack(),
                              SizedBox(height: 32.v),
                              _buildSummaryColumn()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 79.v,
        centerTitle: true,
        title: Container(
            decoration: AppDecoration.fillOnPrimary,
            child: Row(children: [
              AppbarIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  onTap: () {
                    onTapArrowLeft();
                  }),
              AppbarSubtitle(
                  text: "lbl_summary".tr,
                  margin: EdgeInsets.fromLTRB(82.h, 12.v, 127.h, 8.v))
            ])),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildFrequentlyAddedStack() {
    return SizedBox(
        height: 202.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 21.v),
                  child: Text("msg_frequently_added".tr,
                      style: CustomTextStyles.titleMediumSFProDisplay))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
                  decoration: AppDecoration.fillBlue.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_selected_services".tr,
                            style: CustomTextStyles.titleMediumBold_2),
                        SizedBox(height: 16.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgImage60x60,
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  radius: BorderRadius.circular(10.h)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, top: 4.v, bottom: 10.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_diamond_facial".tr,
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 5.v),
                                        Text("lbl_699".tr,
                                            style: CustomTextStyles
                                                .titleMediumPrimary)
                                      ]))
                            ]),
                        SizedBox(height: 16.v),
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
                                  child: Text("lbl_45_mins".tr,
                                      style: theme.textTheme.bodyMedium))
                            ]),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(right: 65.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 4.adaptSize,
                                      width: 4.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 4.v, bottom: 8.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.gray60001,
                                          borderRadius:
                                              BorderRadius.circular(2.h))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("msg_for_all_skin_types2".tr,
                                          style: theme.textTheme.bodyMedium))
                                ])),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(right: 22.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 4.adaptSize,
                                      width: 4.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 4.v, bottom: 8.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.gray60001,
                                          borderRadius:
                                              BorderRadius.circular(2.h))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("msg_6_step_process".tr,
                                          style: theme.textTheme.bodyMedium))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildAddButton() {
    return CustomElevatedButton(
        height: 30.v,
        width: 120.h,
        text: "lbl_add".tr,
        buttonStyle: CustomButtonStyles.outlineBlackTL15,
        buttonTextStyle: CustomTextStyles.bodyMediumSFProDisplayOnPrimary);
  }

  /// Section Widget
  Widget _buildAddButton1() {
    return CustomElevatedButton(
        height: 30.v,
        width: 120.h,
        text: "lbl_add".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 12.adaptSize,
                width: 12.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlackTL15,
        buttonTextStyle: CustomTextStyles.bodyMediumSFProDisplayOnPrimary);
  }

  /// Section Widget
  Widget _buildAddButton2() {
    return CustomElevatedButton(
        height: 30.v,
        width: 120.h,
        text: "lbl_add".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 12.adaptSize,
                width: 12.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlackTL15,
        buttonTextStyle: CustomTextStyles.bodyMediumSFProDisplayOnPrimary);
  }

  /// Section Widget
  Widget _buildAddStack() {
    return SizedBox(
        height: 227.v,
        width: 359.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: SizedBox(
                          height: 227.v,
                          width: 359.h,
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 227.v,
                                        width: 140.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray100,
                                            borderRadius:
                                                BorderRadius.circular(25.h)))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                        height: 227.v,
                                        width: 140.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 227.v,
                                                      width: 140.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray100,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      25.h)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage15120x120,
                                                                height: 120
                                                                    .adaptSize,
                                                                width: 120
                                                                    .adaptSize,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        14.h)),
                                                            SizedBox(
                                                                height: 57.v),
                                                            _buildAddButton()
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage13120x120,
                                                  height: 120.adaptSize,
                                                  width: 120.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      14.h)),
                                              SizedBox(height: 10.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                            height: 17.v,
                                                            width: 62.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        1.v),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "lbl_manicure"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleSmallMedium)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "lbl_manicure"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleSmallMedium))
                                                                ])),
                                                        Text("lbl_threading".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallMedium)
                                                      ])),
                                              SizedBox(height: 4.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.h),
                                                  child: Text("lbl_499".tr,
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              SizedBox(height: 8.v),
                                              _buildAddButton1()
                                            ])))
                              ]))))),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 9.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10.h),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder25),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgImage14120x120,
                                      height: 120.adaptSize,
                                      width: 120.adaptSize,
                                      radius: BorderRadius.circular(14.h)),
                                  SizedBox(height: 10.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text("lbl_pedicure".tr,
                                          style: CustomTextStyles
                                              .titleSmallMedium)),
                                  SizedBox(height: 5.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text("lbl_499".tr,
                                          style: theme.textTheme.bodySmall)),
                                  SizedBox(height: 8.v),
                                  _buildAddButton2()
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 32.h, top: 163.v, bottom: 48.v),
                            child: Text("lbl_49".tr,
                                style: theme.textTheme.bodySmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildScheduleForLaterButton() {
    return Expanded(
        child: CustomElevatedButton(
            text: "msg_schedule_for_later".tr,
            margin: EdgeInsets.only(right: 6.h),
            buttonStyle: CustomButtonStyles.fillBlack,
            buttonTextStyle: CustomTextStyles.titleSmallSFProDisplayOnPrimary,
            onPressed: () {
              onTapScheduleForLaterButton();
            }));
  }

  /// Section Widget
  Widget _buildRequestNowButton() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_request_now".tr,
            margin: EdgeInsets.only(left: 6.h),
            buttonTextStyle: CustomTextStyles.titleSmallSFProDisplayOnPrimary,
            onPressed: () {
              onTapRequestNowButton();
            }));
  }

  /// Section Widget
  Widget _buildHurrayYouSavedButton() {
    return CustomElevatedButton(
        height: 32.v,
        text: "msg_hurray_you_saved".tr,
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: CustomTextStyles.labelLargeInterGreen400);
  }

  /// Section Widget
  Widget _buildSummaryColumn() {
    return Container(
        margin: EdgeInsets.only(right: 16.h),
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 2.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("lbl_payment_summary".tr,
                      style: CustomTextStyles.titleMediumSFProDisplay))),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: _buildItemDiscount(
                  dynamicText: "lbl_item_total".tr,
                  dynamicText1: "lbl_699".tr)),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: _buildItemDiscount(
                  dynamicText: "lbl_item_discount".tr,
                  dynamicText1: "lbl_50".tr)),
          SizedBox(height: 9.v),
          SizedBox(
              height: 67.v,
              width: 343.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("lbl_service_fee".tr,
                                            style: CustomTextStyles
                                                .bodyMediumGray900)),
                                    SizedBox(height: 33.v),
                                    Text("lbl_grand_total".tr,
                                        style: CustomTextStyles
                                            .titleSmallSFProDisplay)
                                  ]),
                              Column(children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("lbl_502".tr,
                                        style: CustomTextStyles
                                            .bodyMediumGray900)),
                                SizedBox(height: 33.v),
                                Text("lbl_749".tr,
                                    style: theme.textTheme.titleSmall)
                              ])
                            ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 7.v, bottom: 12.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildScheduleForLaterButton(),
                              _buildRequestNowButton()
                            ])))
              ])),
          SizedBox(height: 18.v),
          _buildHurrayYouSavedButton()
        ]));
  }

  /// Common widget
  Widget _buildItemDiscount({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(dynamicText,
          style: CustomTextStyles.bodyMediumGray900
              .copyWith(color: appTheme.gray900)),
      Text(dynamicText1,
          style: CustomTextStyles.bodyMediumGreen400
              .copyWith(color: appTheme.green400))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [AddAddressFinalOneBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [AddAddressFinalOneController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapScheduleForLaterButton() {
    Get.bottomSheet(
      AddAddressFinalOneBottomsheet(
        Get.put(
          AddAddressFinalOneController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [RequestNowSelectTimeBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [RequestNowSelectTimeController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapRequestNowButton() {
    Get.bottomSheet(
      RequestNowSelectTimeBottomsheet(
        Get.put(
          RequestNowSelectTimeController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
