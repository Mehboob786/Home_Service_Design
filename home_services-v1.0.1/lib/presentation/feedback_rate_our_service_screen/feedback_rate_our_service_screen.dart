import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_rating_bar.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

class FeedbackRateOurServiceScreen extends StatelessWidget {
  FeedbackRateOurServiceScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController improvementController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
                        _buildDiamondFacial(context),
                        SizedBox(height: 22.v),
                        Text(
                          "How would you rate the experienceand service ?",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 23.v),
                        CustomRatingBar(
                          initialRating: 0,
                        ),
                        SizedBox(height: 135.v),
                        CustomTextFormField(
                          controller: improvementController,
                          hintText: "Tell us on how we can improve",
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
        bottomNavigationBar: _buildSubmitFeedback(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
        text: "Feedback",
      ),
    );
  }

  /// Section Widget
  Widget _buildDiamondFacial(BuildContext context) {
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
                  "Diamond Facial",
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
                        "2 hrs",
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
                        "Includes dummy info",
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
  Widget _buildSubmitFeedback(BuildContext context) {
    return CustomElevatedButton(
      text: "Submit Feedback",
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
