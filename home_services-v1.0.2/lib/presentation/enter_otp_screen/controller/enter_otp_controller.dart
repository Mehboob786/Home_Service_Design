import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/enter_otp_screen/models/enter_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the EnterOtpScreen.
///
/// This class manages the state of the EnterOtpScreen, including the
/// current enterOtpModelObj
class EnterOtpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<EnterOtpModel> enterOtpModelObj = EnterOtpModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
