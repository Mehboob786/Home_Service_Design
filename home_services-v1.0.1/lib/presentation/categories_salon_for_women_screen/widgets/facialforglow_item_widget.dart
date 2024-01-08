import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class FacialforglowItemWidget extends StatelessWidget {
  FacialforglowItemWidget({
    Key? key,
    this.onTapFacialForGlow,
  }) : super(
          key: key,
        );

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
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              height: 148.adaptSize,
              width: 148.adaptSize,
              radius: BorderRadius.circular(
                14.h,
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "Facial for glow",
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "₹599 onwards",
                style: CustomTextStyles.titleSmallPrimary_1,
              ),
            ),
            SizedBox(height: 22.v),
          ],
        ),
      ),
    );
  }
}
