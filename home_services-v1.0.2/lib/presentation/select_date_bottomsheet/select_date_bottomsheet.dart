import '../select_date_bottomsheet/widgets/timeone_item_widget.dart';
import 'controller/select_date_controller.dart';
import 'models/timeone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

class SelectDateBottomsheet extends StatelessWidget {
  SelectDateBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectDateController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 36.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "msg_select_date_and".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "msg_your_service_will".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 40.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                _buildDate2(
                  sunText: "lbl_sat".tr,
                  elevenText: "lbl_10".tr,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: _buildDate2(
                    sunText: "lbl_sun".tr,
                    elevenText: "lbl_11".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildDate2(
                    sunText: "lbl_mon".tr,
                    elevenText: "lbl_12".tr,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          _buildTimeOne(),
          Spacer(),
          CustomElevatedButton(
            text: "msg_proceed_to_checkout".tr,
            margin: EdgeInsets.only(right: 14.h),
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.bodyLargeGray60002,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeOne() {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Obx(
        () => Wrap(
          runSpacing: 14.v,
          spacing: 14.h,
          children: List<Widget>.generate(
            controller.selectDateModelObj.value.timeoneItemList.value.length,
            (index) {
              TimeoneItemModel model = controller
                  .selectDateModelObj.value.timeoneItemList.value[index];

              return TimeoneItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildDate2({
    required String sunText,
    required String elevenText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sunText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray60001,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              elevenText,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
