import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_icon_button.dart';

class ServiceCompletedScreen extends StatelessWidget {
  const ServiceCompletedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameGreen400,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        margin: EdgeInsets.only(top: 14.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 93.h,
                          bottom: 94.v,
                        ),
                        child: CustomIconButton(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          decoration: IconButtonStyleHelper.fillGrayTL10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameGray60001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Text(
                "Service Completed",
                style: CustomTextStyles.titleLargeInterGreen400,
              ),
              SizedBox(height: 19.v),
              Container(
                width: 267.h,
                margin: EdgeInsets.symmetric(horizontal: 37.h),
                child: Text(
                  "Dear John Kevin please share your valuable feedback. This will help us improve our services.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeInterGray900_1.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Spacer(),
              _buildAcServiceInfo(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildShareFeedbackButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildAcServiceInfo(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage47,
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
                  "AC Service",
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
                        "1 hr",
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
  Widget _buildShareFeedbackButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Share Feedback",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 36.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary,
    );
  }
}
