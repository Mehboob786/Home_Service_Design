import '../controller/categories_salon_for_women_controller.dart';
import '../models/facialforglow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class FacialforglowItemWidget extends StatelessWidget {
  FacialforglowItemWidget(
    this.facialforglowItemModelObj, {
    Key? key,
    this.onTapFacialForGlow,
  }) : super(
          key: key,
        );

  FacialforglowItemModel facialforglowItemModelObj;

  var controller = Get.find<CategoriesSalonForWomenController>();

  VoidCallback? onTapFacialForGlow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFacialForGlow!.call();
      },
      child: Container(
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: facialforglowItemModelObj.facialImage!.value,
                height: 148.adaptSize,
                width: 148.adaptSize,
                radius: BorderRadius.circular(
                  14.h,
                ),
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  facialforglowItemModelObj.facialName!.value,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  facialforglowItemModelObj.facialPrice!.value,
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ),
            ),
            SizedBox(height: 22.v),
          ],
        ),
      ),
    );
  }
}
