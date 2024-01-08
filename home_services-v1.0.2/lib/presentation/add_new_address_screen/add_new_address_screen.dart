import '../add_new_address_screen/widgets/itemtotal_item_widget.dart';
import 'controller/add_new_address_controller.dart';
import 'dart:async';
import 'models/itemtotal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/core/utils/validation_functions.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_icon_button.dart';
import 'package:home_services/widgets/custom_outlined_button.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';
import 'package:home_services/presentation/add_address_final_one_bottomsheet/add_address_final_one_bottomsheet.dart';
import 'package:home_services/presentation/add_address_final_one_bottomsheet/controller/add_address_final_one_controller.dart';

// ignore_for_file: must_be_immutable
class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  AddNewAddressScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: SizedBox(
                            height: 782.v,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(height: 8.v),
                                        _buildArrowLeftSection(),
                                        SizedBox(height: 22.v),
                                        _buildMapSection(),
                                        SizedBox(height: 32.v),
                                        _buildFrequentlyAddedSection(),
                                        SizedBox(height: 32.v),
                                        _buildHurrayYouSaved50OnFinalSection()
                                      ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 782.v,
                                      width: double.maxFinite,
                                      decoration: AppDecoration.fillBlack,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            _buildMapSection1(),
                                            _buildHouseFlatNumberSection()
                                          ])))
                            ])))))));
  }

  /// Section Widget
  Widget _buildArrowLeftSection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapImgArrowLeft();
                  })),
          Padding(
              padding: EdgeInsets.only(left: 82.h, top: 12.v, bottom: 8.v),
              child: Text("lbl_summary".tr, style: theme.textTheme.titleLarge))
        ]));
  }

  /// Section Widget
  Widget _buildMapSection() {
    return SizedBox(
        height: 202.v,
        width: 343.h,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }

  /// Section Widget
  Widget _buildFrequentlyAddedSection() {
    return SizedBox(
        height: 227.v,
        width: 359.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: SizedBox(
                          height: 227.v,
                          width: 359.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 227.v,
                                    width: 140.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray100,
                                        borderRadius:
                                            BorderRadius.circular(25.h)))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.h, bottom: 10.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 6.h),
                                              child: Text("lbl_499".tr,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          SizedBox(height: 8.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 39.h,
                                                  vertical: 5.v),
                                              decoration: AppDecoration
                                                  .outlineBlack
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder14),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgFrame,
                                                        height: 12.adaptSize,
                                                        width: 12.adaptSize,
                                                        margin: EdgeInsets
                                                            .symmetric(
                                                                vertical: 3.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h,
                                                                right: 1.h,
                                                                bottom: 1.v),
                                                        child: Text(
                                                            "lbl_add".tr,
                                                            style: CustomTextStyles
                                                                .bodyMediumSFProDisplayOnPrimary))
                                                  ]))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage13120x120,
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                radius: BorderRadius.circular(14.h),
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 10.h, top: 10.v)),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 140.v, bottom: 68.v),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: 17.v,
                                              width: 62.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 1.v),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_manicure".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallMedium)),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_manicure".tr,
                                                            style: CustomTextStyles
                                                                .titleSmallMedium))
                                                  ])),
                                          Text("lbl_threading".tr,
                                              style: CustomTextStyles
                                                  .titleSmallMedium)
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 227.v,
                                    width: 140.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.gray100,
                                        borderRadius:
                                            BorderRadius.circular(25.h)))),
                            CustomElevatedButton(
                                height: 30.v,
                                width: 120.h,
                                text: "lbl_add".tr,
                                margin: EdgeInsets.only(bottom: 10.v),
                                buttonStyle:
                                    CustomButtonStyles.outlineBlackTL15,
                                buttonTextStyle: CustomTextStyles
                                    .bodyMediumSFProDisplayOnPrimary,
                                alignment: Alignment.bottomRight),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage15120x120,
                                height: 120.adaptSize,
                                width: 120.adaptSize,
                                radius: BorderRadius.circular(14.h),
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 10.v))
                          ]))))),
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  margin: EdgeInsets.only(right: 63.h),
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder25),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage14120x120,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                            radius: BorderRadius.circular(14.h)),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_pedicure".tr,
                                style: CustomTextStyles.titleSmallMedium)),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_499".tr,
                                style: theme.textTheme.bodySmall)),
                        SizedBox(height: 8.v),
                        CustomElevatedButton(
                            height: 30.v,
                            width: 120.h,
                            text: "lbl_add".tr,
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 4.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFrame,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize)),
                            buttonStyle: CustomButtonStyles.outlineBlackTL15,
                            buttonTextStyle: CustomTextStyles
                                .bodyMediumSFProDisplayOnPrimary)
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 9.h, bottom: 48.v),
                  child: Text("lbl_49".tr, style: theme.textTheme.bodySmall)))
        ]));
  }

  /// Section Widget
  Widget _buildHurrayYouSaved50OnFinalSection() {
    return SizedBox(
        height: 243.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 83.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 43.v),
                  decoration:
                      BoxDecoration(color: theme.colorScheme.onPrimary))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("lbl_payment_summary".tr,
                                    style: CustomTextStyles
                                        .titleMediumSFProDisplay))),
                        SizedBox(height: 16.v),
                        Obx(() => Wrap(
                            runSpacing: 211.v,
                            spacing: 211.h,
                            children: List<Widget>.generate(
                                controller.addNewAddressModelObj.value
                                    .itemtotalItemList.value.length, (index) {
                              ItemtotalItemModel model = controller
                                  .addNewAddressModelObj
                                  .value
                                  .itemtotalItemList
                                  .value[index];
                              return ItemtotalItemWidget(model);
                            }))),
                        SizedBox(height: 9.v),
                        SizedBox(
                            height: 67.v,
                            width: 343.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                              "lbl_service_fee"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .bodyMediumGray900)),
                                                      SizedBox(height: 33.v),
                                                      Text("lbl_grand_total".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallSFProDisplay)
                                                    ]),
                                                Column(children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Text("lbl_502".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumGray900)),
                                                  SizedBox(height: 32.v),
                                                  Text("lbl_749".tr,
                                                      style: theme
                                                          .textTheme.titleSmall)
                                                ])
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 7.v, bottom: 12.v),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        right: 6.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 27.h,
                                                            vertical: 14.v),
                                                    decoration: AppDecoration
                                                        .fillBlack
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Text(
                                                        "msg_schedule_for_later"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleSmallSFProDisplayOnPrimary)),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 6.h),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 40.h,
                                                            vertical: 14.v),
                                                    decoration: AppDecoration
                                                        .fillPrimary
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Text(
                                                        "lbl_request_now".tr,
                                                        style: CustomTextStyles
                                                            .titleSmallSFProDisplayOnPrimary))
                                              ])))
                                ])),
                        SizedBox(height: 18.v),
                        CustomElevatedButton(
                            height: 32.v,
                            text: "msg_hurray_you_saved".tr,
                            margin: EdgeInsets.symmetric(horizontal: 16.h),
                            buttonStyle: CustomButtonStyles.fillGreen,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeInterGreen400)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMapSection1() {
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
                                onTap: () {
                                  onTapBtnIconButton();
                                },
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
  Widget _buildHouseFlatNumberSection() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 36.v),
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("msg_madhapur_hyderabad".tr,
                          style: CustomTextStyles.titleMediumSemiBold)),
                  SizedBox(height: 12.v),
                  Container(
                      width: 277.h,
                      margin: EdgeInsets.only(left: 7.h, right: 73.h),
                      child: Text("msg_plot_no_209_kavuri".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallSFProDisplayGray60001
                              .copyWith(height: 1.50))),
                  SizedBox(height: 24.v),
                  Divider(indent: 7.h, endIndent: 7.h),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.h),
                      child: CustomTextFormField(
                          controller: controller.houseFlatNumberController,
                          hintText: "msg_house_flat_number".tr,
                          textInputType: TextInputType.number,
                          validator: (value) {
                            if (!isNumeric(value)) {
                              return "err_msg_please_enter_valid_number".tr;
                            }
                            return null;
                          })),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.h),
                      child: CustomTextFormField(
                          controller: controller.landmarkOptionalController,
                          hintText: "msg_landmark_optional".tr,
                          textInputAction: TextInputAction.done)),
                  SizedBox(height: 17.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("lbl_save_as".tr,
                          style: CustomTextStyles.bodyMediumSFProDisplay)),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Row(children: [
                        CustomOutlinedButton(width: 60.h, text: "lbl_home".tr),
                        CustomOutlinedButton(
                            width: 58.h,
                            text: "lbl_other".tr,
                            margin: EdgeInsets.only(left: 10.h),
                            buttonStyle: CustomButtonStyles.outlineGray,
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumSFProDisplayGray500)
                      ])),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                      text: "msg_save_and_proceed".tr,
                      margin: EdgeInsets.only(right: 14.h),
                      buttonStyle: CustomButtonStyles.fillBlueGray,
                      buttonTextStyle: CustomTextStyles.bodyLargeGray60002)
                ])));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [AddAddressFinalOneBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [AddAddressFinalOneController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapBtnIconButton() {
    Get.bottomSheet(
      AddAddressFinalOneBottomsheet(
        Get.put(
          AddAddressFinalOneController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
