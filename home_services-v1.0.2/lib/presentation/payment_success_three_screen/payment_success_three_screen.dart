import 'controller/payment_success_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

class PaymentSuccessThreeScreen
    extends GetWidget<PaymentSuccessThreeController> {
  const PaymentSuccessThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: 699.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 72.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.h, vertical: 23.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup29),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 48.v),
                                Text("lbl_great".tr,
                                    style:
                                        CustomTextStyles.bodyLargeInterPrimary),
                                SizedBox(height: 23.v),
                                Text("lbl_payment_success".tr,
                                    style: theme.textTheme.titleLarge),
                                SizedBox(height: 30.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 72.h),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Text("lbl_payment_mode".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallGray60001)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 67.h),
                                              child: Text("lbl_upi".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallMedium))
                                        ]))),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 61.h),
                                        child: Row(children: [
                                          Text("lbl_total_amount".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray60001),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 78.h),
                                              child: Text("lbl_7492".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallMedium))
                                        ]))),
                                SizedBox(height: 18.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 9.h),
                                        child: Row(children: [
                                          Text("lbl_pay_date".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray60001),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 108.h),
                                              child: Text("lbl_apr_10_2022".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallMedium))
                                        ]))),
                                SizedBox(height: 16.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 33.h),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Text("lbl_pay_time".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallGray60001)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 106.h),
                                              child: Text("lbl_10_45_am".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallMedium))
                                        ]))),
                                SizedBox(height: 65.v),
                                Divider(
                                    color: appTheme.gray100,
                                    indent: 8.h,
                                    endIndent: 8.h),
                                SizedBox(height: 48.v),
                                Text("lbl_total_pay".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray60001),
                                SizedBox(height: 5.v),
                                Text("lbl_7492".tr,
                                    style:
                                        CustomTextStyles.titleLargeInterPrimary)
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          margin: EdgeInsets.only(top: 25.v),
                          decoration: AppDecoration.fillBlue5001.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder50),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary100x100,
                              height: 100.adaptSize,
                              width: 100.adaptSize,
                              alignment: Alignment.center)))
                ])),
            bottomNavigationBar: _buildPaymentSuccessButton()));
  }

  /// Section Widget
  Widget _buildPaymentSuccessButton() {
    return CustomElevatedButton(
        text: "lbl_done".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v),
        onPressed: () {
          onTapPaymentSuccessButton();
        });
  }

  /// Navigates to the successfulBookingFourScreen when the action is triggered.
  onTapPaymentSuccessButton() {
    Get.toNamed(
      AppRoutes.successfulBookingFourScreen,
    );
  }
}
