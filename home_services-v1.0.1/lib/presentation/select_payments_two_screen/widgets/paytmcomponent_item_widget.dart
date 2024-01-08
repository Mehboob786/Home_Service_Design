import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class PaytmcomponentItemWidget extends StatelessWidget {
  const PaytmcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 7.v),
          padding: EdgeInsets.all(2.h),
          decoration: AppDecoration.outlinePrimary1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 6.v,
            bottom: 3.v,
          ),
          child: Text(
            "Paytm UPI",
            style: theme.textTheme.titleMedium,
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgRectangle63,
          height: 30.v,
          width: 32.h,
          radius: BorderRadius.circular(
            8.h,
          ),
        ),
      ],
    );
  }
}
