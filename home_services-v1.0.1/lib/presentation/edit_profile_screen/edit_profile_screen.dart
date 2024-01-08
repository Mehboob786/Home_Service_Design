import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:home_services/widgets/app_bar/appbar_title.dart';import 'package:home_services/widgets/app_bar/custom_app_bar.dart';import 'package:home_services/widgets/custom_elevated_button.dart';import 'package:home_services/widgets/custom_floating_text_field.dart';import 'package:home_services/widgets/custom_icon_button.dart';import 'package:home_services/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends StatelessWidget {EditProfileScreen({Key? key}) : super(key: key);

TextEditingController fullNameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 24.v), child: Column(children: [SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle945100x100, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), Padding(padding: EdgeInsets.only(right: 5.h, bottom: 5.v), child: CustomIconButton(height: 25.adaptSize, width: 25.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillPrimaryTL9, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgFrameOnprimary)))])), SizedBox(height: 61.v), Align(alignment: Alignment.centerLeft, child: Text("Full Name", style: CustomTextStyles.labelLargeInterGray60001)), SizedBox(height: 6.v), CustomTextFormField(controller: fullNameController, hintText: "John Kevin", hintStyle: CustomTextStyles.titleMediumSemiBold, borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false), SizedBox(height: 25.v), _buildEditProfileMobileNumber(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSaveChanges(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 61.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Edit Profile")); } 
/// Section Widget
Widget _buildEditProfileMobileNumber(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Email", style: CustomTextStyles.labelLargeInterGray60001), SizedBox(height: 8.v), Text("johnkevin787@gmail.com", style: CustomTextStyles.titleMediumSemiBold), SizedBox(height: 6.v), Divider(color: appTheme.gray200), SizedBox(height: 25.v), CustomFloatingTextField(controller: mobileNumberController, labelText: "Mobile Number", labelStyle: CustomTextStyles.titleMediumSemiBold, hintText: "Mobile Number", textInputAction: TextInputAction.done, textInputType: TextInputType.phone)]); } 
/// Section Widget
Widget _buildSaveChanges(BuildContext context) { return CustomElevatedButton(text: "Save changes", margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v), buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
