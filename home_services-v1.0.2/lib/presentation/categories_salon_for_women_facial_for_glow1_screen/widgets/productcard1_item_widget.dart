import '../controller/categories_salon_for_women_facial_for_glow1_controller.dart';
import '../models/productcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(
    this.productcard1ItemModelObj, {
    Key? key,
    this.onTapBtnIconButton,
  }) : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  var controller = Get.find<CategoriesSalonForWomenFacialForGlow1Controller>();

  VoidCallback? onTapBtnIconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              imagePath: productcard1ItemModelObj.image!.value,
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
                productcard1ItemModelObj.title!.value,
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
                    productcard1ItemModelObj.price1!.value,
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Obx(
                    () => Text(
                      productcard1ItemModelObj.price2!.value,
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
            child: Obx(
              () => CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(12.h),
                alignment: Alignment.centerRight,
                onTap: () {
                  onTapBtnIconButton!.call();
                },
                child: CustomImageView(
                  imagePath: productcard1ItemModelObj.iconButton!.value,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
