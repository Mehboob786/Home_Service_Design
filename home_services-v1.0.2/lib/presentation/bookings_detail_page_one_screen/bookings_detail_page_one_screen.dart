import '../bookings_detail_page_one_screen/widgets/diamondfacialcomponentlist_item_widget.dart';
import 'controller/bookings_detail_page_one_controller.dart';
import 'models/diamondfacialcomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

class BookingsDetailPageOneScreen
    extends GetWidget<BookingsDetailPageOneController> {
  const BookingsDetailPageOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_22nd".tr,
                                  style: CustomTextStyles.titleMediumBold),
                              SizedBox(height: 2.v),
                              Text("lbl_nov_tuesday".tr,
                                  style: CustomTextStyles.titleMediumBold),
                              SizedBox(height: 12.v),
                              _buildDiamondFacialComponentList(),
                              SizedBox(height: 24.v),
                              _buildCancelStack()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClock,
            margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 12.v),
            onTap: () {
              onTapClock();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "msg_upcoming_booking".tr));
  }

  /// Section Widget
  Widget _buildDiamondFacialComponentList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller.bookingsDetailPageOneModelObj.value
            .diamondfacialcomponentlistItemList.value.length,
        itemBuilder: (context, index) {
          DiamondfacialcomponentlistItemModel model = controller
              .bookingsDetailPageOneModelObj
              .value
              .diamondfacialcomponentlistItemList
              .value[index];
          return DiamondfacialcomponentlistItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildBillingDetailsColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text("lbl_billing_details".tr,
                  style: CustomTextStyles.titleMediumSFProDisplay)),
          SizedBox(height: 18.v),
          _buildItemDiscountRow(
              itemDiscountText: "lbl_item_total".tr, priceText: "lbl_699".tr),
          SizedBox(height: 9.v),
          _buildItemDiscountRow(
              itemDiscountText: "lbl_item_discount".tr, priceText: "lbl_50".tr),
          SizedBox(height: 9.v),
          _buildItemDiscountRow(
              itemDiscountText: "lbl_service_fee".tr, priceText: "lbl_502".tr),
          SizedBox(height: 33.v),
          _buildItemDiscountRow(
              itemDiscountText: "lbl_grand_total".tr, priceText: "lbl_749".tr)
        ]));
  }

  /// Section Widget
  Widget _buildCancelStack() {
    return SizedBox(
        height: 386.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 16.v),
                        _buildBillingDetailsColumn(),
                        SizedBox(height: 15.v),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 13.v),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text("lbl_payment_mode2".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray900)),
                                  Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text("lbl_paytm_upi".tr,
                                          style: CustomTextStyles
                                              .titleSmallMedium))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding: EdgeInsets.all(14.h),
                  decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFrameBlack900,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h, top: 3.v),
                              child: Text("lbl_home".tr,
                                  style: CustomTextStyles.titleSmallMedium))
                        ]),
                        SizedBox(height: 4.v),
                        Container(
                            width: 230.h,
                            margin: EdgeInsets.only(left: 30.h, right: 50.h),
                            child: Text("msg_plot_no_209_kavuri2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodySmallSFProDisplayGray60001
                                    .copyWith(height: 1.50))),
                        SizedBox(height: 8.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFrameBlack90020x20,
                              height: 20.adaptSize,
                              width: 20.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h, top: 4.v),
                              child: Text("msg_sat_apr_09_07_30".tr,
                                  style: CustomTextStyles
                                      .bodySmallSFProDisplayGray60001))
                        ])
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 232.v, bottom: 107.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomElevatedButton(
                                text: "lbl_cancel".tr,
                                margin: EdgeInsets.only(right: 6.h),
                                buttonStyle: CustomButtonStyles.fillBlack,
                                buttonTextStyle: CustomTextStyles
                                    .titleSmallSFProDisplayOnPrimary,
                                onPressed: () {
                                  onTapCancel();
                                })),
                        Expanded(
                            child: CustomElevatedButton(
                                text: "lbl_reschedule".tr,
                                margin: EdgeInsets.only(left: 6.h),
                                buttonTextStyle: CustomTextStyles
                                    .titleSmallSFProDisplayOnPrimary,
                                onPressed: () {
                                  onTapReschedule();
                                }))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildItemDiscountRow({
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

  /// Navigates to the bookingsUpcomingContainerScreen when the action is triggered.
  onTapClock() {
    Get.toNamed(
      AppRoutes.bookingsUpcomingContainerScreen,
    );
  }

  /// Navigates to the cancelBookingScreen when the action is triggered.
  onTapCancel() {
    Get.toNamed(
      AppRoutes.cancelBookingScreen,
    );
  }

  /// Navigates to the bookingsDetailPageTwoScreen when the action is triggered.
  onTapReschedule() {
    Get.toNamed(
      AppRoutes.bookingsDetailPageTwoScreen,
    );
  }
}
