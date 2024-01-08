import 'controller/feedback_rate_our_service_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_rating_bar.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FeedbackRateOurServiceScreen
    extends GetWidget<FeedbackRateOurServiceController> {
  const FeedbackRateOurServiceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildDiamondFacial(),
                        SizedBox(height: 22.v),
                        Text(
                          "msg_how_would_you_rate".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 23.v),
                        CustomRatingBar(
                          initialRating: 0,
                        ),
                        SizedBox(height: 135.v),
                        CustomTextFormField(
                          controller: controller.improvementController,
                          hintText: "msg_tell_us_on_how_we".tr,
                          hintStyle: CustomTextStyles.bodyLargeInterGray500,
                          textInputAction: TextInputAction.done,
                          maxLines: 9,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSubmitFeedback(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgClock,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 5.v,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_feedback".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDiamondFacial() {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage23100x100,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              14.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 12.v,
              bottom: 25.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_diamond_facial".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_2_hrs".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_includes_dummy_info".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitFeedback() {
    return CustomElevatedButton(
      text: "lbl_submit_feedback".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayGray60002,
    );
  }
}
