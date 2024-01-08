import '../request_now_select_time_bottomsheet/widgets/chipview_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RequestNowSelectTimeBottomsheet extends StatelessWidget {
  const RequestNowSelectTimeBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
              "Select time ",
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "Your service will take approx. 45 mins",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 40.v),
          Container(
            margin: EdgeInsets.only(
              left: 7.h,
              right: 294.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sat",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  "10",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          _buildChipView(context),
          Spacer(),
          CustomElevatedButton(
            text: "Proceed to checkout",
            margin: EdgeInsets.only(right: 14.h),
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.bodyLargeGray60002,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Wrap(
        runSpacing: 14.v,
        spacing: 14.h,
        children: List<Widget>.generate(6, (index) => ChipviewItemWidget()),
      ),
    );
  }
}
