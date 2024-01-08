import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/core/utils/validation_functions.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_floating_text_field.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 24.v),
                    child: Column(children: [
                      SizedBox(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle945100x100,
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    radius: BorderRadius.circular(50.h),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: EdgeInsets.only(
                                        right: 5.h, bottom: 5.v),
                                    child: CustomIconButton(
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        padding: EdgeInsets.all(6.h),
                                        decoration: IconButtonStyleHelper
                                            .fillPrimaryTL9,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFrameOnprimary)))
                              ])),
                      SizedBox(height: 61.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_full_name".tr,
                              style:
                                  CustomTextStyles.labelLargeInterGray60001)),
                      SizedBox(height: 6.v),
                      CustomTextFormField(
                          controller: controller.fullNameController,
                          hintText: "lbl_john_kevin".tr,
                          hintStyle: CustomTextStyles.titleMediumSemiBold,
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineGray,
                          filled: false),
                      SizedBox(height: 25.v),
                      _buildEditProfileMobileNumber(),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildSaveChanges()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_edit_profile".tr));
  }

  /// Section Widget
  Widget _buildEditProfileMobileNumber() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: CustomTextStyles.labelLargeInterGray60001),
      SizedBox(height: 8.v),
      Text("msg_johnkevin787_gmail_com".tr,
          style: CustomTextStyles.titleMediumSemiBold),
      SizedBox(height: 6.v),
      Divider(color: appTheme.gray200),
      SizedBox(height: 25.v),
      CustomFloatingTextField(
          controller: controller.mobileNumberController,
          labelText: "lbl_mobile_number".tr,
          labelStyle: CustomTextStyles.titleMediumSemiBold,
          hintText: "lbl_mobile_number".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          })
    ]);
  }

  /// Section Widget
  Widget _buildSaveChanges() {
    return CustomElevatedButton(
        text: "lbl_save_changes".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v),
        buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
