import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/feedback_rated_page/feedback_rated_page.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

class FeedbackRatedTabContainerScreen extends StatefulWidget {
  const FeedbackRatedTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FeedbackRatedTabContainerScreenState createState() =>
      FeedbackRatedTabContainerScreenState();
}

class FeedbackRatedTabContainerScreenState
    extends State<FeedbackRatedTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 21.v),
            child: Column(
              children: [
                _buildDiamondFacial(context),
                SizedBox(height: 22.v),
                Text(
                  "How would you rate the experience and service ?",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 24.v),
                Container(
                  height: 35.v,
                  width: 239.h,
                  child: TabBar(
                    controller: tabviewController,
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
                    controller: tabviewController,
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
}
