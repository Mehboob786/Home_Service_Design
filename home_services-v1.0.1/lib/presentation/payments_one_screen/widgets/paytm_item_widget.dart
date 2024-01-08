import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class PaytmItemWidget extends StatelessWidget {
  PaytmItemWidget({
    Key? key,
    this.onTapPaytm,
  }) : super(
          key: key,
        );

  VoidCallback? onTapPaytm;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapPaytm!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 7.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8.h,
              ),
              border: Border.all(
                color: appTheme.gray900,
                width: 1.h,
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
      ),
    );
  }
}
