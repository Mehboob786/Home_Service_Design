import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:home_services/widgets/app_bar/appbar_title.dart';import 'package:home_services/widgets/app_bar/custom_app_bar.dart';class ManageAddressScreen extends StatelessWidget {const ManageAddressScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 41.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgFramePrimary, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("Add another address", style: CustomTextStyles.titleMediumPrimary_1))]))), SizedBox(height: 23.v), Divider(), SizedBox(height: 22.v), _buildHomeRow(context), SizedBox(height: 3.v), _buildDescriptionStack(context), SizedBox(height: 15.v), Divider(), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 61.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Manage Address")); } 
/// Section Widget
Widget _buildHomeRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 16.h, right: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("Home", style: CustomTextStyles.titleMediumSemiBold), CustomImageView(imagePath: ImageConstant.imgNotification, height: 18.adaptSize, width: 18.adaptSize, onTap: () {onTapImgNotification(context);})])); } 
/// Section Widget
Widget _buildEditDeleteMenu(BuildContext context) { return Align(alignment: Alignment.centerRight, child: Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v), decoration: AppDecoration.outlineBlack900.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [GestureDetector(onTap: () {onTapTxtEdit(context);}, child: Text("Edit", style: CustomTextStyles.bodyMediumSFProDisplayGray900)), SizedBox(height: 14.v), Text("Delete", style: CustomTextStyles.bodyMediumSFProDisplayGray900)]))); } 
/// Section Widget
Widget _buildDescriptionStack(BuildContext context) { return SizedBox(height: 76.v, width: 343.h, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.centerLeft, child: SizedBox(width: 309.h, child: Text("Plot no.209, Kavuri Hills, Madhapur, Telangana 500033\nPh: +91234567890", maxLines: 3, overflow: TextOverflow.ellipsis, style: CustomTextStyles.titleSmallGray60001.copyWith(height: 1.50)))), _buildEditDeleteMenu(context)])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the manageAddressOneScreen when the action is triggered.
onTapImgNotification(BuildContext context) { Navigator.pushNamed(context, AppRoutes.manageAddressOneScreen); } 
/// Navigates to the editUpdateAddressScreen when the action is triggered.
onTapTxtEdit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.editUpdateAddressScreen); } 
 }
