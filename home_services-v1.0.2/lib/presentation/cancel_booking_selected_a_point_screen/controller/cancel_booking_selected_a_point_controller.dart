import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/cancel_booking_selected_a_point_screen/models/cancel_booking_selected_a_point_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CancelBookingSelectedAPointScreen.
///
/// This class manages the state of the CancelBookingSelectedAPointScreen, including the
/// current cancelBookingSelectedAPointModelObj
class CancelBookingSelectedAPointController extends GetxController {
  TextEditingController commentController = TextEditingController();

  Rx<CancelBookingSelectedAPointModel> cancelBookingSelectedAPointModelObj =
      CancelBookingSelectedAPointModel().obs;

  Rx<String> radioGroup = "".obs;

  @override
  void onClose() {
    super.onClose();
    commentController.dispose();
  }
}
