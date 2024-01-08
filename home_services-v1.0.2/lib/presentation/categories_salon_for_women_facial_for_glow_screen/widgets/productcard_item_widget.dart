import '../controller/categories_salon_for_women_facial_for_glow_controller.dart';
import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
    this.onTapProductCard,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<CategoriesSalonForWomenFacialForGlowController>();

  VoidCallback? onTapProductCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductCard!.call();
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
                imagePath: productcardItemModelObj.image!.value,
                height: 148.adaptSize,
                width: 148.adaptSize,
                radius: BorderRadius.circular(
                  14.h,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Obx(
                () => Text(
                  productcardItemModelObj.title!.value,
                  style: CustomTextStyles.titleMediumBlack900,
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  Obx(
                    () => Text(
                      productcardItemModelObj.price1!.value,
                      style: CustomTextStyles.titleSmallPrimary_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Obx(
                      () => Text(
                        productcardItemModelObj.price2!.value,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(12.h),
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                ),
              ),
            ),
            SizedBox(height: 8.v),
          ],
        ),
      ),
    );
  }
}
