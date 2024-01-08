import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(12.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray400,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGrayTL15 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillGrayTL10 => BoxDecoration(
        color: appTheme.gray200,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPrimaryTL9 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(9.h),
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillPrimaryTL16 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
      );
}
