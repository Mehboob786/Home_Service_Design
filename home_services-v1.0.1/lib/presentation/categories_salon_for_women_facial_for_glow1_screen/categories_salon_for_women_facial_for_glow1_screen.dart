import '../categories_salon_for_women_facial_for_glow1_screen/widgets/productcard1_item_widget.dart';import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/app_bar/appbar_subtitle_one.dart';import 'package:home_services/widgets/app_bar/appbar_title_image.dart';import 'package:home_services/widgets/app_bar/custom_app_bar.dart';import 'package:home_services/widgets/custom_elevated_button.dart';class CategoriesSalonForWomenFacialForGlow1Screen extends StatelessWidget {const CategoriesSalonForWomenFacialForGlow1Screen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 21.v), child: Column(children: [SizedBox(height: 4.v), _buildProductCard(context)])), bottomNavigationBar: _buildProceed(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 120.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(bottom: 5.v), onTap: () {onTapArrowLeft(context);}), AppbarSubtitleOne(text: "Facial for glow", margin: EdgeInsets.only(left: 84.h, top: 1.v))])), SizedBox(height: 8.v), Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider()))]), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildProductCard(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 285.v, crossAxisCount: 2, mainAxisSpacing: 15.h, crossAxisSpacing: 15.h), physics: NeverScrollableScrollPhysics(), itemCount: 3, itemBuilder: (context, index) {return Productcard1ItemWidget(onTapBtnIconButton: () {onTapBtnIconButton(context);});})); } 
/// Section Widget
Widget _buildProceed(BuildContext context) { return CustomElevatedButton(text: "Proceed", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v), buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary, onPressed: () {onTapProceed(context);}); } 
/// Navigates to the categoriesSalonForWomenFacialForGlowScreen when the action is triggered.
onTapBtnIconButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.categoriesSalonForWomenFacialForGlowScreen); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the selectedSummaryScreen when the action is triggered.
onTapProceed(BuildContext context) { Navigator.pushNamed(context, AppRoutes.selectedSummaryScreen); } 
 }
