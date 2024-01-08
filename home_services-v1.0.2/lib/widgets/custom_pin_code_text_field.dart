import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_services/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.titleMediumSemiBold,
        hintStyle: hintStyle ?? CustomTextStyles.titleMediumSemiBold,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 50.h,
          fieldWidth: 53.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(12.h),
          inactiveColor: appTheme.gray600,
          activeColor: appTheme.gray600,
          selectedColor: theme.colorScheme.primary,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
