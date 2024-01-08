import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/enter_otp_one_screen/models/enter_otp_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the EnterOtpOneScreen.
///
/// This class manages the state of the EnterOtpOneScreen, including the
/// current enterOtpOneModelObj
class EnterOtpOneController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<EnterOtpOneModel> enterOtpOneModelObj = EnterOtpOneModel().obs;

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
