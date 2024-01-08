import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget({
    Key? key,
    this.onTapProductCard,
  }) : super(
          key: key,
        );

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
            CustomImageView(
              imagePath: ImageConstant.imgImage24,
              height: 148.adaptSize,
              width: 148.adaptSize,
              radius: BorderRadius.circular(
                14.h,
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "Pearl Facial",
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  Text(
                    "₹599",
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Text(
                      "₹899",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        decoration: TextDecoration.lineThrough,
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
