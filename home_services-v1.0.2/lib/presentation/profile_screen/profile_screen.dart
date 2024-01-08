import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_upcoming_tab_container_page/bookings_upcoming_tab_container_page.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_bottom_bar.dart';
import 'package:home_services/widgets/custom_icon_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 42.v),
                child: Column(children: [
                  _buildJohnKevin(),
                  SizedBox(height: 16.v),
                  Divider(),
                  SizedBox(height: 31.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildReferEarn(
                          userImage: ImageConstant.imgFrameBlack90024x24,
                          referEarn: "lbl_manage_address".tr,
                          onTapReferEarn: () {
                            onTapManageAddress();
                          })),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildReferEarn(
                          userImage: ImageConstant.imgFrame24x24,
                          referEarn: "lbl_refer_earn".tr)),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildReferEarn(
                          userImage: ImageConstant.imgFrame1,
                          referEarn: "lbl_rate_us".tr)),
                  SizedBox(height: 32.v),
                  _buildAboutMHomeServices(),
                  SizedBox(height: 32.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildReferEarn(
                          userImage: ImageConstant.imgThumbsUp,
                          referEarn: "lbl_logout".tr,
                          onTapReferEarn: () {
                            onTapThumbsUp();
                          })),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true, title: AppbarTitle(text: "lbl_profile".tr));
  }

  /// Section Widget
  Widget _buildJohnKevin() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle945,
              height: 80.adaptSize,
              width: 80.adaptSize,
              radius: BorderRadius.circular(40.h)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 21.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_john_kevin".tr,
                        style: CustomTextStyles.titleMediumSemiBold),
                    SizedBox(height: 7.v),
                    Text("lbl_91_1234567890".tr,
                        style: CustomTextStyles.labelLargeInter)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 18.v),
              child: CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  onTap: () {
                    onTapBtnUser();
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgUserPrimary)))
        ]));
  }

  /// Section Widget
  Widget _buildAboutMHomeServices() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUser, height: 24.v, width: 28.h),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 2.v),
              child: Text("msg_about_mhome_services".tr,
                  style: theme.textTheme.titleMedium)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildReferEarn({
    required String userImage,
    required String referEarn,
    Function? onTapReferEarn,
  }) {
    return GestureDetector(
        onTap: () {
          onTapReferEarn!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: userImage, height: 24.adaptSize, width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v),
              child: Text(referEarn,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.gray900))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 4.v))
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.bookingsUpcomingTabContainerPage;
      case BottomBarEnum.Personal:
        return "/";
      case BottomBarEnum.Bookings:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.bookingsUpcomingTabContainerPage:
        return BookingsUpcomingTabContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapBtnUser() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the manageAddressOneScreen when the action is triggered.
  onTapManageAddress() {
    Get.toNamed(
      AppRoutes.manageAddressOneScreen,
    );
  }

  /// Navigates to the splashScreenLatestScreen when the action is triggered.
  onTapThumbsUp() {
    Get.toNamed(
      AppRoutes.splashScreenLatestScreen,
    );
  }
}
