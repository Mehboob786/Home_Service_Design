import '../payments_one_screen/widgets/paytm_item_widget.dart';import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:home_services/widgets/app_bar/appbar_title.dart';import 'package:home_services/widgets/app_bar/custom_app_bar.dart';import 'package:home_services/widgets/custom_elevated_button.dart';import 'package:home_services/widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable
class PaymentsOneScreen extends StatelessWidget {PaymentsOneScreen({Key? key}) : super(key: key);

String radioGroup = "";

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 31.v), child: Column(children: [_buildUpi(context), SizedBox(height: 37.v), _buildCards(context), SizedBox(height: 37.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Cash", style: CustomTextStyles.titleMediumSFProDisplay))), SizedBox(height: 19.v), _buildCash(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildProceed(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 61.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Payment Option")); } 
/// Section Widget
Widget _buildUpi(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("UPI", style: CustomTextStyles.titleMediumSFProDisplay), SizedBox(height: 19.v), Padding(padding: EdgeInsets.only(right: 1.h), child: ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 25.v);}, itemCount: 3, itemBuilder: (context, index) {return PaytmItemWidget(onTapPaytm: () {onTapPaytm(context);});}))])); } 
/// Section Widget
Widget _buildCards(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Cards", style: CustomTextStyles.titleMediumSFProDisplay), SizedBox(height: 19.v), Padding(padding: EdgeInsets.only(right: 1.h), child: Row(children: [Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 8.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.gray900, width: 1.h))), CustomImageView(imagePath: ImageConstant.imgRectangle6630x32, height: 30.v, width: 32.h, radius: BorderRadius.circular(8.h), margin: EdgeInsets.only(left: 16.h)), Padding(padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 5.v), child: Text("************2575", style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgFrameGray900, height: 32.adaptSize, width: 32.adaptSize)]))])); } 
/// Section Widget
Widget _buildCash(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 5.v, bottom: 6.v), child: CustomRadioButton(text: "Cash", value: "Cash", groupValue: radioGroup, textStyle: theme.textTheme.titleMedium, onChange: (value) {radioGroup = value;})), CustomImageView(imagePath: ImageConstant.imgFrameBlack90032x32, height: 32.adaptSize, width: 32.adaptSize)])); } 
/// Section Widget
Widget _buildProceed(BuildContext context) { return CustomElevatedButton(text: "Proceed", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v), buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.bodyLargeGray60002); } 
/// Navigates to the selectPaymentsTwoScreen when the action is triggered.
onTapPaytm(BuildContext context) { Navigator.pushNamed(context, AppRoutes.selectPaymentsTwoScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
