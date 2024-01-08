import 'controller/address_selected_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_radio_button.dart';
import 'package:home_services/presentation/select_date_bottomsheet/select_date_bottomsheet.dart';
import 'package:home_services/presentation/select_date_bottomsheet/controller/select_date_controller.dart';

// ignore_for_file: must_be_immutable
class AddressSelectedBottomsheet extends StatelessWidget {
  AddressSelectedBottomsheet(this.controller, {Key? key}) : super(key: key);

  AddressSelectedController controller;

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
                  child: Text("lbl_select_address".tr,
                      style: theme.textTheme.titleMedium)),
              SizedBox(height: 14.v),
              GestureDetector(
                  onTap: () {
                    onTapAddNewAddress();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Text("lbl_add_new_address".tr,
                                style: CustomTextStyles.labelLargeInterPrimary))
                      ]))),
              SizedBox(height: 18.v),
              Divider(indent: 7.h, endIndent: 7.h),
              SizedBox(height: 21.v),
              Container(
                  margin: EdgeInsets.only(right: 7.h),
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(() => CustomRadioButton(
                            text: "lbl_home".tr,
                            value: "lbl_home".tr,
                            groupValue: controller.radioGroup.value,
                            textStyle: CustomTextStyles.titleSmallMedium,
                            onChange: (value) {
                              controller.radioGroup.value = value;
                            })),
                        SizedBox(height: 7.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 277.h,
                                margin:
                                    EdgeInsets.only(left: 26.h, right: 33.h),
                                child: Text("msg_plot_no_209_kavuri".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodySmallSFProDisplayGray60001
                                        .copyWith(height: 1.50))))
                      ])),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                  text: "lbl_proceed".tr,
                  margin: EdgeInsets.only(right: 14.h),
                  onPressed: () {
                    onTapProceed();
                  })
            ]));
  }

  /// Navigates to the addNewAddressScreen when the action is triggered.
  onTapAddNewAddress() {
    Get.toNamed(
      AppRoutes.addNewAddressScreen,
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [SelectDateBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [SelectDateController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapProceed() {
    Get.bottomSheet(
      SelectDateBottomsheet(
        Get.put(
          SelectDateController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
