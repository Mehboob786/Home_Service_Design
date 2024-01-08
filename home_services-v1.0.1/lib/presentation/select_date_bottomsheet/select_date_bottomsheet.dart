import '../select_date_bottomsheet/widgets/timeone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SelectDateBottomsheet extends StatelessWidget {
  const SelectDateBottomsheet({Key? key})
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
              "Select date and time ",
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
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                _buildDate2(
                  context,
                  sunText: "Sat",
                  elevenText: "10",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: _buildDate2(
                    context,
                    sunText: "Sun",
                    elevenText: "11",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: _buildDate2(
                    context,
                    sunText: "Mon",
                    elevenText: "12",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          _buildTimeOne(context),
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
  Widget _buildTimeOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Wrap(
        runSpacing: 14.v,
        spacing: 14.h,
        children: List<Widget>.generate(3, (index) => TimeoneItemWidget()),
      ),
    );
  }

  /// Common widget
  Widget _buildDate2(
    BuildContext context, {
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
