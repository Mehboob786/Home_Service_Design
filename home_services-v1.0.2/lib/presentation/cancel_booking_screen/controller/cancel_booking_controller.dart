import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/cancel_booking_screen/models/cancel_booking_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CancelBookingScreen.
///
/// This class manages the state of the CancelBookingScreen, including the
/// current cancelBookingModelObj
class CancelBookingController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<CancelBookingModel> cancelBookingModelObj = CancelBookingModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
