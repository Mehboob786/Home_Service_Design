import 'controller/summary_final_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_iconbutton.dart';
import 'package:home_services/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

class SummaryFinalScreen extends GetWidget<SummaryFinalController> {
  const SummaryFinalScreen({Key? key}) : super(key: key);

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
                              _buildHome(),
                              SizedBox(height: 16.v),
                              _buildFrequentlyAdded(),
                              SizedBox(height: 32.v),
                              _buildFrequentlyAdded2(),
                              SizedBox(height: 11.v),
                              _buildHurrayYouSaved50OnFinal1()
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
  Widget _buildHome() {
    return Container(
        margin: EdgeInsets.only(right: 16.h),
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgFrameBlack900,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 10.h, top: 3.v),
                child: Text("lbl_home".tr,
                    style: CustomTextStyles.titleSmallMedium)),
            Spacer(),
            CustomImageView(
                imagePath: ImageConstant.imgFrameBlack90016x16,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(top: 3.v))
          ]),
          SizedBox(height: 4.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 230.h,
                  margin: EdgeInsets.only(left: 30.h, right: 50.h),
                  child: Text("msg_plot_no_209_kavuri2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallSFProDisplayGray60001
                          .copyWith(height: 1.50)))),
          SizedBox(height: 8.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack90020x20,
                  height: 20.adaptSize,
                  width: 20.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 4.v),
                  child: Text("msg_sat_apr_09_07_30".tr,
                      style: CustomTextStyles.bodySmallSFProDisplayGray60001))
            ]),
            CustomImageView(
                imagePath: ImageConstant.imgFrameBlack90016x16,
                height: 16.adaptSize,
                width: 16.adaptSize)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildFrequentlyAdded() {
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
                            padding: EdgeInsets.only(right: 22.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(right: 43.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: 4.adaptSize,
                                                width: 4.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 4.v, bottom: 8.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray60001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.h))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.h),
                                                child: Text(
                                                    "msg_for_all_skin_types2"
                                                        .tr,
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ])),
                                  SizedBox(height: 4.v),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: 4.adaptSize,
                                            width: 4.adaptSize,
                                            margin: EdgeInsets.only(
                                                top: 4.v, bottom: 8.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.gray60001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        2.h))),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text("msg_6_step_process".tr,
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ])
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
  Widget _buildFrequentlyAdded2() {
    return SizedBox(
        height: 227.v,
        width: 359.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 9.h, bottom: 48.v),
                  child: Text("lbl_49".tr, style: theme.textTheme.bodySmall))),
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: SizedBox(
                          height: 227.v,
                          width: 359.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
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
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, bottom: 10.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: Text("lbl_499".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          SizedBox(height: 8.v),
                                          _buildAddButton()
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage13120x120,
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                radius: BorderRadius.circular(14.h),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 10.h, top: 10.v)),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 140.v, bottom: 68.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 17.v,
                                              width: 62.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_manicure".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallMedium)),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_manicure".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallMedium))
                                                  ])),
                                          Text("lbl_threading".tr,
                                              style: CustomTextStyles
                                                  .titleSmallMedium)
                                        ]))),
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
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImage15120x120,
                                                            height:
                                                                120.adaptSize,
                                                            width:
                                                                120.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(
                                                                    14.h)),
                                                        SizedBox(height: 57.v),
                                                        Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        46.h,
                                                                    vertical: 6
                                                                        .v),
                                                            decoration: AppDecoration
                                                                .outlineBlack
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder14),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          1.v),
                                                                  Text(
                                                                      "lbl_add"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodyMediumSFProDisplayOnPrimary)
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 227.v,
                                                  width: 140.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.gray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.h))))
                                        ])))
                          ]))))),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  margin: EdgeInsets.only(right: 63.h),
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder25),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage14120x120,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                            radius: BorderRadius.circular(14.h)),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_pedicure".tr,
                                style: CustomTextStyles.titleSmallMedium)),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_499".tr,
                                style: theme.textTheme.bodySmall)),
                        SizedBox(height: 8.v),
                        _buildAddButton2()
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildHurrayYouSaved50OnFinal() {
    return CustomElevatedButton(
        height: 32.v,
        text: "msg_hurray_you_saved".tr,
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: CustomTextStyles.labelLargeInterGreen400);
  }

  /// Section Widget
  Widget _buildPay749() {
    return CustomElevatedButton(
        width: 343.h,
        text: "lbl_pay_749".tr,
        buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary,
        onPressed: () {
          onTapPay749();
        },
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildHurrayYouSaved50OnFinal1() {
    return SizedBox(
        height: 264.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_payment_summary".tr,
                                style:
                                    CustomTextStyles.titleMediumSFProDisplay)),
                        SizedBox(height: 16.v),
                        _buildItemDiscount(
                            itemDiscountText: "lbl_item_total".tr,
                            priceText: "lbl_699".tr),
                        SizedBox(height: 9.v),
                        _buildItemDiscount(
                            itemDiscountText: "lbl_item_discount".tr,
                            priceText: "lbl_50".tr),
                        SizedBox(height: 9.v),
                        _buildItemDiscount(
                            itemDiscountText: "lbl_service_fee".tr,
                            priceText: "lbl_502".tr),
                        SizedBox(height: 32.v),
                        _buildItemDiscount(
                            itemDiscountText: "lbl_grand_total".tr,
                            priceText: "lbl_749".tr),
                        SizedBox(height: 18.v),
                        _buildHurrayYouSaved50OnFinal()
                      ]))),
          _buildPay749()
        ]));
  }

  /// Common widget
  Widget _buildItemDiscount({
    required String itemDiscountText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(itemDiscountText,
          style: CustomTextStyles.bodyMediumGray900
              .copyWith(color: appTheme.gray900)),
      Text(priceText,
          style: CustomTextStyles.bodyMediumGreen400
              .copyWith(color: appTheme.green400))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the paymentsOneScreen when the action is triggered.
  onTapPay749() {
    Get.toNamed(
      AppRoutes.paymentsOneScreen,
    );
  }
}
