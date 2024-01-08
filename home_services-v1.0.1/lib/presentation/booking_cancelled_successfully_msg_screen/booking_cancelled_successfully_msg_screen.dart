import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/custom_elevated_button.dart';import 'package:home_services/widgets/custom_icon_button.dart';class BookingCancelledSuccessfullyMsgScreen extends StatelessWidget {const BookingCancelledSuccessfullyMsgScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), child: Column(children: [SizedBox(height: 20.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgFrameRed500, height: 100.adaptSize, width: 100.adaptSize, margin: EdgeInsets.only(top: 14.v)), Padding(padding: EdgeInsets.only(left: 93.h, bottom: 94.v), child: CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, decoration: IconButtonStyleHelper.fillGrayTL10, onTap: () {onTapBtnIconButton(context);}, child: CustomImageView(imagePath: ImageConstant.imgFrameGray60001)))]))), SizedBox(height: 19.v), Text("Booking Cancelled !", style: CustomTextStyles.titleLargeInterRed500), SizedBox(height: 18.v), SizedBox(width: 343.h, child: RichText(text: TextSpan(children: [TextSpan(text: "Dear John Kevin you have successfully cancelled your booking of ", style: CustomTextStyles.bodyLargeInterGray900), TextSpan(text: "Diamond Facial", style: CustomTextStyles.titleMediumBold_1), TextSpan(text: " on date ", style: CustomTextStyles.bodyLargeInterGray900), TextSpan(text: "12 Dec. We hope to serve you better :)", style: CustomTextStyles.titleMediumBold_1)]), textAlign: TextAlign.center)), Spacer(), _buildDiamondFacialSection(context)])), bottomNavigationBar: _buildGoBackButtonSection(context))); } 
/// Section Widget
Widget _buildDiamondFacialSection(BuildContext context) { return Container(padding: EdgeInsets.all(14.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage23100x100, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(14.h)), Padding(padding: EdgeInsets.only(left: 17.h, top: 12.v, bottom: 25.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Diamond Facial", style: theme.textTheme.titleSmall), SizedBox(height: 8.v), Row(children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 6.v), decoration: BoxDecoration(color: appTheme.gray60001, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("1 hr", style: theme.textTheme.bodyMedium))]), SizedBox(height: 3.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.only(top: 5.v, bottom: 7.v), decoration: BoxDecoration(color: appTheme.gray60001, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Includes dummy info", style: theme.textTheme.bodyMedium))])]))])); } 
/// Section Widget
Widget _buildGoBackButtonSection(BuildContext context) { return CustomElevatedButton(text: "Go back", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v), onPressed: () {onTapGoBackButtonSection(context);}); } 
/// Navigates to the bookingsDetailPageOneScreen when the action is triggered.
onTapBtnIconButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bookingsDetailPageOneScreen); } 
/// Navigates to the bookingsDetailPageOneScreen when the action is triggered.
onTapGoBackButtonSection(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bookingsDetailPageOneScreen); } 
 }
