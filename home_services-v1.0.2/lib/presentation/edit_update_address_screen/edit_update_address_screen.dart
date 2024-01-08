import 'controller/edit_update_address_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_floating_button.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:home_services/widgets/custom_outlined_button.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditUpdateAddressScreen extends GetWidget<EditUpdateAddressController> {
  EditUpdateAddressScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 782.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  _buildMainContent(),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 782.v,
                          width: double.maxFinite,
                          decoration: AppDecoration.fillBlack,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildMap(),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 36.v),
                                        decoration: AppDecoration.fillOnPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      "msg_madhapur_hyderabad"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleMediumSemiBold)),
                                              SizedBox(height: 12.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                      width: 311.h,
                                                      margin: EdgeInsets.only(
                                                          right: 32.h),
                                                      child: Text(
                                                          "msg_plot_no_209_kavuri"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodySmallGray60001
                                                              .copyWith(
                                                                  height:
                                                                      1.50)))),
                                              SizedBox(height: 25.v),
                                              Divider(),
                                              SizedBox(height: 15.v),
                                              _buildFiftyFour(),
                                              SizedBox(height: 16.v),
                                              CustomTextFormField(
                                                  controller: controller
                                                      .landmarkOptionalController,
                                                  hintText:
                                                      "msg_landmark_optional"
                                                          .tr,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              SizedBox(height: 17.v),
                                              _buildHome(),
                                              SizedBox(height: 24.v),
                                              CustomElevatedButton(
                                                  text: "lbl_update_address".tr,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumSFProDisplayOnPrimary,
                                                  onPressed: () {
                                                    onTapUpdateAddress();
                                                  })
                                            ])))
                              ])))
                ])),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  Widget _buildMainContent() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 26.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(children: [
                        CustomIconButton(
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillGrayTL15,
                            onTap: () {
                              onTapBtnArrowLeft();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 49.h, top: 12.v, bottom: 8.v),
                            child: Text("lbl_manage_address".tr,
                                style: theme.textTheme.titleLarge))
                      ])),
                  SizedBox(height: 47.v),
                  SizedBox(
                      height: 182.v,
                      width: double.maxFinite,
                      child: GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: CameraPosition(
                              target: LatLng(
                                  37.43296265331129, -122.08832357078792),
                              zoom: 14.4746),
                          onMapCreated: (GoogleMapController controller) {
                            googleMapController.complete(controller);
                          },
                          zoomControlsEnabled: false,
                          zoomGesturesEnabled: false,
                          myLocationButtonEnabled: false,
                          myLocationEnabled: false))
                ])));
  }

  /// Section Widget
  Widget _buildMap() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 400.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 84.v),
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMaps,
                  height: 400.v,
                  width: 375.h,
                  radius: BorderRadius.vertical(top: Radius.circular(20.h)),
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 25.v, right: 16.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomIconButton(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                decoration: IconButtonStyleHelper.fillGray,
                                alignment: Alignment.centerRight,
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFrameGray60001)),
                            SizedBox(height: 31.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup33290,
                                height: 31.v,
                                width: 20.h,
                                radius: BorderRadius.vertical(
                                    top: Radius.circular(20.h)))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildFiftyFour() {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 5.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("msg_house_flat_number".tr,
                  style: CustomTextStyles.bodySmallSFProDisplayGray500),
              SizedBox(height: 3.v),
              Text("lbl_plot_no_209".tr,
                  style: CustomTextStyles.titleSmallMedium),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildHome() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_save_as".tr, style: CustomTextStyles.bodyMediumSFProDisplay),
      SizedBox(height: 10.v),
      Row(children: [
        CustomOutlinedButton(width: 60.h, text: "lbl_home".tr),
        CustomOutlinedButton(
            width: 58.h,
            text: "lbl_other".tr,
            margin: EdgeInsets.only(left: 10.h),
            buttonStyle: CustomButtonStyles.outlineGray,
            buttonTextStyle: CustomTextStyles.bodyMediumSFProDisplayGray500)
      ])
    ]);
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 28,
        width: 28,
        backgroundColor: appTheme.gray400,
        child: CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 14.0.v,
            width: 14.0.h));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  /// Navigates to the manageAddressOneScreen when the action is triggered.
  onTapUpdateAddress() {
    Get.toNamed(
      AppRoutes.manageAddressOneScreen,
    );
  }
}
