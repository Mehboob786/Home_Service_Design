import '../payments_one_screen/widgets/paytm_item_widget.dart';
import 'controller/payments_one_controller.dart';
import 'models/paytm_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_radio_button.dart';

class PaymentsOneScreen extends GetWidget<PaymentsOneController> {
  const PaymentsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 31.v),
                child: Column(children: [
                  _buildUpi(),
                  SizedBox(height: 37.v),
                  _buildCards(),
                  SizedBox(height: 37.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_cash".tr,
                              style:
                                  CustomTextStyles.titleMediumSFProDisplay))),
                  SizedBox(height: 19.v),
                  _buildCash(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildProceed()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_payment_option".tr));
  }

  /// Section Widget
  Widget _buildUpi() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_upi".tr, style: CustomTextStyles.titleMediumSFProDisplay),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 25.v);
                  },
                  itemCount: controller
                      .paymentsOneModelObj.value.paytmItemList.value.length,
                  itemBuilder: (context, index) {
                    PaytmItemModel model = controller
                        .paymentsOneModelObj.value.paytmItemList.value[index];
                    return PaytmItemWidget(model, onTapPaytm: () {
                      onTapPaytm();
                    });
                  })))
        ]));
  }

  /// Section Widget
  Widget _buildCards() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_cards".tr, style: CustomTextStyles.titleMediumSFProDisplay),
          SizedBox(height: 19.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Row(children: [
                Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.h),
                        border:
                            Border.all(color: appTheme.gray900, width: 1.h))),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle6630x32,
                    height: 30.v,
                    width: 32.h,
                    radius: BorderRadius.circular(8.h),
                    margin: EdgeInsets.only(left: 16.h)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 5.v),
                    child: Text("msg_2575".tr,
                        style: theme.textTheme.titleMedium)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgFrameGray900,
                    height: 32.adaptSize,
                    width: 32.adaptSize)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCash() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() => Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                  child: CustomRadioButton(
                      text: "lbl_cash".tr,
                      value: "lbl_cash".tr,
                      groupValue: controller.radioGroup.value,
                      textStyle: theme.textTheme.titleMedium,
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),
              CustomImageView(
                  imagePath: ImageConstant.imgFrameBlack90032x32,
                  height: 32.adaptSize,
                  width: 32.adaptSize)
            ]));
  }

  /// Section Widget
  Widget _buildProceed() {
    return CustomElevatedButton(
        text: "lbl_proceed".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.bodyLargeGray60002);
  }

  /// Navigates to the selectPaymentsTwoScreen when the action is triggered.
  onTapPaytm() {
    Get.toNamed(AppRoutes.selectPaymentsTwoScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
