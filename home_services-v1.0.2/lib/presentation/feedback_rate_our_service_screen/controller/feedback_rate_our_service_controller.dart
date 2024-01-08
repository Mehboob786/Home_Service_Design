import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/feedback_rate_our_service_screen/models/feedback_rate_our_service_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FeedbackRateOurServiceScreen.
///
/// This class manages the state of the FeedbackRateOurServiceScreen, including the
/// current feedbackRateOurServiceModelObj
class FeedbackRateOurServiceController extends GetxController {
  TextEditingController improvementController = TextEditingController();

  Rx<FeedbackRateOurServiceModel> feedbackRateOurServiceModelObj =
      FeedbackRateOurServiceModel().obs;

  @override
  void onClose() {
    super.onClose();
    improvementController.dispose();
  }
}
