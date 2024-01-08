import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray60002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyLargeInterGray500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray500,
      );
  static get bodyLargeInterGray50001 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyLargeInterGray900 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeInterGray90018 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterGray90018_1 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeInterGray900_1 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeInterPrimary => theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGreen400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.green400,
      );
  static get bodyMediumSFProDisplay => theme.textTheme.bodyMedium!.sFProDisplay;
  static get bodyMediumSFProDisplayGray500 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumSFProDisplayGray900 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumSFProDisplayOnPrimary =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallSFProDisplay => theme.textTheme.bodySmall!.sFProDisplay;
  static get bodySmallSFProDisplayGray500 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallSFProDisplayGray60001 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.gray60001,
      );
  // Display text style
  static get displaySmallOnPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Headline style
  static get headlineSmallInter => theme.textTheme.headlineSmall!.inter;
  // Label style
  static get labelLargeInter => theme.textTheme.labelLarge!.inter;
  static get labelLargeInterGray60001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray60001,
      );
  static get labelLargeInterGray60001Bold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeInterGreen400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.green400,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeInterPrimaryContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeInterGreen400 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.green400,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeInterPrimaryContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleLargeInterRed500 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.red500,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSFProDisplayGray60002 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray60002,
      );
  static get titleMediumSFProDisplayOnPrimary =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSFProDisplay => theme.textTheme.titleSmall!.sFProDisplay;
  static get titleSmallSFProDisplayGreen400 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProDisplayOnPrimary =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProDisplayPrimary =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get squadaOne {
    return copyWith(
      fontFamily: 'Squada One',
    );
  }
}
