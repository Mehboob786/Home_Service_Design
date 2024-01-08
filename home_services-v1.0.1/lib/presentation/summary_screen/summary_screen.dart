import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_iconbutton.dart';
import 'package:home_services/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/presentation/add_address_final_one_bottomsheet/add_address_final_one_bottomsheet.dart';
import 'package:home_services/presentation/request_now_select_time_bottomsheet/request_now_select_time_bottomsheet.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildFrequentlyAddedStack(context),
                              SizedBox(height: 32.v),
                              _buildAddStack(context),
                              SizedBox(height: 32.v),
                              _buildSummaryColumn(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 79.v,
        centerTitle: true,
        title: Container(
            decoration: AppDecoration.fillOnPrimary,
            child: Row(children: [
              AppbarIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              AppbarSubtitle(
                  text: "Summary",
                  margin: EdgeInsets.fromLTRB(82.h, 12.v, 127.h, 8.v))
            ])),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildFrequentlyAddedStack(BuildContext context) {
    return SizedBox(
        height: 202.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 21.v),
                  child: Text("Frequently added together",
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
                        Text("Selected Services",
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
                                        Text("Diamond Facial",
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 5.v),
                                        Text("₹699",
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
                                  child: Text("45 mins",
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
                                      child: Text(
                                          "For all skin types. Pinacolada mask.",
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
                                      child: Text(
                                          "6-step process. Includes 10-min massage",
                                          style: theme.textTheme.bodyMedium))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildAddButton(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 120.h,
        text: "Add",
        buttonStyle: CustomButtonStyles.outlineBlackTL15,
        buttonTextStyle: CustomTextStyles.bodyMediumSFProDisplayOnPrimary);
  }

  /// Section Widget
  Widget _buildAddButton1(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 120.h,
        text: "Add",
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
  Widget _buildAddButton2(BuildContext context) {
    return CustomElevatedButton(
        height: 30.v,
        width: 120.h,
        text: "Add",
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
  Widget _buildAddStack(BuildContext context) {
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
                                                            _buildAddButton(
                                                                context)
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
                                                                          "Manicure",
                                                                          style:
                                                                              CustomTextStyles.titleSmallMedium)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "Manicure",
                                                                          style:
                                                                              CustomTextStyles.titleSmallMedium))
                                                                ])),
                                                        Text("Threading",
                                                            style: CustomTextStyles
                                                                .titleSmallMedium)
                                                      ])),
                                              SizedBox(height: 4.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.h),
                                                  child: Text("₹499",
                                                      style: theme.textTheme
                                                          .bodySmall)),
                                              SizedBox(height: 8.v),
                                              _buildAddButton1(context)
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
                                      child: Text("Pedicure",
                                          style: CustomTextStyles
                                              .titleSmallMedium)),
                                  SizedBox(height: 5.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: Text("₹499",
                                          style: theme.textTheme.bodySmall)),
                                  SizedBox(height: 8.v),
                                  _buildAddButton2(context)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 32.h, top: 163.v, bottom: 48.v),
                            child:
                                Text("₹49", style: theme.textTheme.bodySmall))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildScheduleForLaterButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Schedule for later",
            margin: EdgeInsets.only(right: 6.h),
            buttonStyle: CustomButtonStyles.fillBlack,
            buttonTextStyle: CustomTextStyles.titleSmallSFProDisplayOnPrimary,
            onPressed: () {
              onTapScheduleForLaterButton(context);
            }));
  }

  /// Section Widget
  Widget _buildRequestNowButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "Request Now",
            margin: EdgeInsets.only(left: 6.h),
            buttonTextStyle: CustomTextStyles.titleSmallSFProDisplayOnPrimary,
            onPressed: () {
              onTapRequestNowButton(context);
            }));
  }

  /// Section Widget
  Widget _buildHurrayYouSavedButton(BuildContext context) {
    return CustomElevatedButton(
        height: 32.v,
        text: "Hurray ! You saved ₹50 on final bill",
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        buttonStyle: CustomButtonStyles.fillGreen,
        buttonTextStyle: CustomTextStyles.labelLargeInterGreen400);
  }

  /// Section Widget
  Widget _buildSummaryColumn(BuildContext context) {
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
                  child: Text("Payment Summary",
                      style: CustomTextStyles.titleMediumSFProDisplay))),
          SizedBox(height: 16.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: _buildItemDiscount(context,
                  dynamicText: "Item Total", dynamicText1: "₹699")),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: _buildItemDiscount(context,
                  dynamicText: "Item Discount", dynamicText1: "-₹50")),
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
                                        child: Text("Service Fee",
                                            style: CustomTextStyles
                                                .bodyMediumGray900)),
                                    SizedBox(height: 33.v),
                                    Text("Grand Total",
                                        style: CustomTextStyles
                                            .titleSmallSFProDisplay)
                                  ]),
                              Column(children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text("₹50",
                                        style: CustomTextStyles
                                            .bodyMediumGray900)),
                                SizedBox(height: 33.v),
                                Text("₹749", style: theme.textTheme.titleSmall)
                              ])
                            ]))),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: EdgeInsets.only(top: 7.v, bottom: 12.v),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildScheduleForLaterButton(context),
                              _buildRequestNowButton(context)
                            ])))
              ])),
          SizedBox(height: 18.v),
          _buildHurrayYouSavedButton(context)
        ]));
  }

  /// Common widget
  Widget _buildItemDiscount(
    BuildContext context, {
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Shows a modal bottom sheet with [AddAddressFinalOneBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapScheduleForLaterButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => AddAddressFinalOneBottomsheet(),
        isScrollControlled: true);
  }

  /// Shows a modal bottom sheet with [RequestNowSelectTimeBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapRequestNowButton(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => RequestNowSelectTimeBottomsheet(),
        isScrollControlled: true);
  }
}
