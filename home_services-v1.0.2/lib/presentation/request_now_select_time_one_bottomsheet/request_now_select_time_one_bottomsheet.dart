import '../request_now_select_time_one_bottomsheet/widgets/chipview2_item_widget.dart';
import 'controller/request_now_select_time_one_controller.dart';
import 'models/chipview2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RequestNowSelectTimeOneBottomsheet extends StatelessWidget {
  RequestNowSelectTimeOneBottomsheet(this.controller, {Key? key})
      : super(key: key);

  RequestNowSelectTimeOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 36.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text("lbl_select_time".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text("msg_your_service_will".tr,
                      style: theme.textTheme.bodyMedium)),
              SizedBox(height: 40.v),
              Container(
                  margin: EdgeInsets.only(left: 7.h, right: 294.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_sat".tr,
                                style: theme.textTheme.bodyMedium)),
                        SizedBox(height: 4.v),
                        Text("lbl_10".tr, style: theme.textTheme.titleSmall)
                      ])),
              SizedBox(height: 32.v),
              _buildChipView(),
              Spacer(),
              CustomElevatedButton(
                  text: "msg_proceed_to_checkout".tr,
                  margin: EdgeInsets.only(right: 14.h),
                  onPressed: () {
                    onTapProceedToCheckout();
                  })
            ]));
  }

  /// Section Widget
  Widget _buildChipView() {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Obx(() => Wrap(
            runSpacing: 14.v,
            spacing: 14.h,
            children: List<Widget>.generate(
                controller.requestNowSelectTimeOneModelObj.value
                    .chipview2ItemList.value.length, (index) {
              Chipview2ItemModel model = controller
                  .requestNowSelectTimeOneModelObj
                  .value
                  .chipview2ItemList
                  .value[index];
              return Chipview2ItemWidget(model);
            }))));
  }

  /// Navigates to the summaryFinalScreen when the action is triggered.
  onTapProceedToCheckout() {
    Get.toNamed(
      AppRoutes.summaryFinalScreen,
    );
  }
}
