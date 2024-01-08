import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/presentation/bookings_upcoming_tab_container_page/bookings_upcoming_tab_container_page.dart';import 'package:home_services/widgets/app_bar/appbar_title.dart';import 'package:home_services/widgets/app_bar/custom_app_bar.dart';import 'package:home_services/widgets/custom_bottom_bar.dart';import 'package:home_services/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {ProfileScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 42.v), child: Column(children: [_buildJohnKevin(context), SizedBox(height: 16.v), Divider(), SizedBox(height: 31.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildReferEarn(context, userImage: ImageConstant.imgFrameBlack90024x24, referEarn: "Manage Address", onTapReferEarn: () {onTapManageAddress(context);})), SizedBox(height: 32.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildReferEarn(context, userImage: ImageConstant.imgFrame24x24, referEarn: "Refer & Earn")), SizedBox(height: 32.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildReferEarn(context, userImage: ImageConstant.imgFrame1, referEarn: "Rate us")), SizedBox(height: 32.v), _buildAboutMHomeServices(context), SizedBox(height: 32.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildReferEarn(context, userImage: ImageConstant.imgThumbsUp, referEarn: "Logout", onTapReferEarn: () {onTapThumbsUp(context);})), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: AppbarTitle(text: "Profile")); } 
/// Section Widget
Widget _buildJohnKevin(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgRectangle945, height: 80.adaptSize, width: 80.adaptSize, radius: BorderRadius.circular(40.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 21.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("John Kevin", style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 7.v), Text("+91 1234567890", style: CustomTextStyles.labelLargeInter)])), Spacer(), Padding(padding: EdgeInsets.only(top: 17.v, bottom: 18.v), child: CustomIconButton(height: 45.adaptSize, width: 45.adaptSize, onTap: () {onTapBtnUser(context);}, child: CustomImageView(imagePath: ImageConstant.imgUserPrimary)))])); } 
/// Section Widget
Widget _buildAboutMHomeServices(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgUser, height: 24.v, width: 28.h), Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Text("About mHome Services", style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
/// Common widget
Widget _buildReferEarn(BuildContext context, {required String userImage, required String referEarn, Function? onTapReferEarn, }) { return GestureDetector(onTap: () {onTapReferEarn!.call();}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: userImage, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 2.v), child: Text(referEarn, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.gray900))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 4.v))])); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.bookingsUpcomingTabContainerPage; case BottomBarEnum.Personal: return "/"; case BottomBarEnum.Bookings: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.bookingsUpcomingTabContainerPage: return BookingsUpcomingTabContainerPage(); default: return DefaultWidget();} } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapBtnUser(BuildContext context) { Navigator.pushNamed(context, AppRoutes.editProfileScreen); } 
/// Navigates to the manageAddressOneScreen when the action is triggered.
onTapManageAddress(BuildContext context) { Navigator.pushNamed(context, AppRoutes.manageAddressOneScreen); } 
/// Navigates to the splashScreenLatestScreen when the action is triggered.
onTapThumbsUp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.splashScreenLatestScreen); } 
 }
