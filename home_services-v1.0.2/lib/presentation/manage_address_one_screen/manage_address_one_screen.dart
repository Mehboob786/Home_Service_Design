import 'controller/manage_address_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

class ManageAddressOneScreen extends GetWidget<ManageAddressOneController> {
  const ManageAddressOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 41.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgFramePrimary,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(top: 2.v, bottom: 1.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_add_another_address".tr,
                                    style:
                                        CustomTextStyles.titleMediumPrimary_1))
                          ]))),
                  SizedBox(height: 23.v),
                  Divider(),
                  SizedBox(height: 22.v),
                  _buildHomeSection(),
                  SizedBox(height: 21.v),
                  Divider(),
                  SizedBox(height: 5.v)
                ]))));
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
        title: AppbarTitle(text: "lbl_manage_address".tr));
  }

  /// Section Widget
  Widget _buildHomeSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_home".tr,
                        style: CustomTextStyles.titleMediumSemiBold),
                    CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        onTap: () {
                          onTapImgNotification();
                        })
                  ])),
          SizedBox(height: 9.v),
          Container(
              width: 309.h,
              margin: EdgeInsets.only(right: 33.h),
              child: Text("msg_plot_no_209_kavuri".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallGray60001
                      .copyWith(height: 1.50)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the manageAddressScreen when the action is triggered.
  onTapImgNotification() {
    Get.toNamed(
      AppRoutes.manageAddressScreen,
    );
  }
}
