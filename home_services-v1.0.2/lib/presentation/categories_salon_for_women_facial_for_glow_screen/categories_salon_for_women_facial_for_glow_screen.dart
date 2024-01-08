import '../categories_salon_for_women_facial_for_glow_screen/widgets/productcard_item_widget.dart';
import 'controller/categories_salon_for_women_facial_for_glow_controller.dart';
import 'models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title_image.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

class CategoriesSalonForWomenFacialForGlowScreen
    extends GetWidget<CategoriesSalonForWomenFacialForGlowController> {
  const CategoriesSalonForWomenFacialForGlowScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 21.v),
                child: Column(
                    children: [SizedBox(height: 4.v), _buildProductCard()])),
            bottomNavigationBar: _buildProceed()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 120.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(bottom: 5.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                AppbarSubtitleOne(
                    text: "lbl_facial_for_glow".tr,
                    margin: EdgeInsets.only(left: 84.h, top: 1.v))
              ])),
          SizedBox(height: 8.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProductCard() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 285.v,
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.categoriesSalonForWomenFacialForGlowModelObj
                .value.productcardItemList.value.length,
            itemBuilder: (context, index) {
              ProductcardItemModel model = controller
                  .categoriesSalonForWomenFacialForGlowModelObj
                  .value
                  .productcardItemList
                  .value[index];
              return ProductcardItemWidget(model, onTapProductCard: () {
                onTapProductCard();
              });
            })));
  }

  /// Section Widget
  Widget _buildProceed() {
    return CustomElevatedButton(
        text: "lbl_proceed".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 36.v),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayGray60002);
  }

  /// Navigates to the facialForGlowDiamondFacialDetailsScreen when the action is triggered.
  onTapProductCard() {
    Get.toNamed(AppRoutes.facialForGlowDiamondFacialDetailsScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
