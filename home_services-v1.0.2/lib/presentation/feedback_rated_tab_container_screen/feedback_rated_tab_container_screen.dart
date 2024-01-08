import 'controller/feedback_rated_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/feedback_rated_page/feedback_rated_page.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FeedbackRatedTabContainerScreen
    extends GetWidget<FeedbackRatedTabContainerController> {
  const FeedbackRatedTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Column(
              children: [
                _buildDiamondFacial(),
                SizedBox(height: 22.v),
                Text(
                  "msg_how_would_you_rate".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 24.v),
                Container(
                  height: 35.v,
                  width: 239.h,
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgFramePrimarycontainer35x35,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgFramePrimarycontainer35x35,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgFramePrimarycontainer35x35,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.imgFramePrimarycontainer35x35,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                        ),
                      ),
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrameGray6000135x35,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 442.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      FeedbackRatedPage(),
                      FeedbackRatedPage(),
                      FeedbackRatedPage(),
                      FeedbackRatedPage(),
                      FeedbackRatedPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
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
}
