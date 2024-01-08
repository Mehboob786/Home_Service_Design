import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgMaskGroup,
        height: 180.v,
        width: 343.h,
      ),
    );
  }
}
