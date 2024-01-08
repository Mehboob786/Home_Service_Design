import '../categories_salon_for_women_screen/widgets/facialforglow_item_widget.dart';
import 'controller/categories_salon_for_women_controller.dart';
import 'models/facialforglow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title_image.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

class CategoriesSalonForWomenScreen
    extends GetWidget<CategoriesSalonForWomenController> {
  const CategoriesSalonForWomenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 5.v, right: 16.h),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 245.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.h,
                        crossAxisSpacing: 15.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.categoriesSalonForWomenModelObj.value
                        .facialforglowItemList.value.length,
                    itemBuilder: (context, index) {
                      FacialforglowItemModel model = controller
                          .categoriesSalonForWomenModelObj
                          .value
                          .facialforglowItemList
                          .value[index];
                      return FacialforglowItemWidget(model,
                          onTapFacialForGlow: () {
                        onTapFacialForGlow();
                      });
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 109.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(top: 2.v, bottom: 1.v),
                    onTap: () {
                      onTapArrowLeft();
                    }),
                AppbarSubtitleOne(
                    text: "lbl_salon_for_women".tr,
                    margin: EdgeInsets.only(left: 72.h))
              ])),
          SizedBox(height: 11.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill);
  }

  /// Navigates to the categoriesSalonForWomenFacialForGlowScreen when the action is triggered.
  onTapFacialForGlow() {
    Get.toNamed(AppRoutes.categoriesSalonForWomenFacialForGlowScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
