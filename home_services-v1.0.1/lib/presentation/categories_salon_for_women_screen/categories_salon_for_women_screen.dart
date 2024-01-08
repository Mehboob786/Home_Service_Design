import '../categories_salon_for_women_screen/widgets/facialforglow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title_image.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

class CategoriesSalonForWomenScreen extends StatelessWidget {
  const CategoriesSalonForWomenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 5.v, right: 16.h),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 245.v,
                        crossAxisCount: 2,
                        mainAxisSpacing: 15.h,
                        crossAxisSpacing: 15.h),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return FacialforglowItemWidget(onTapFacialForGlow: () {
                        onTapFacialForGlow(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleOne(
                    text: "Salon for Women",
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
  onTapFacialForGlow(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.categoriesSalonForWomenFacialForGlowScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);

  }
}
