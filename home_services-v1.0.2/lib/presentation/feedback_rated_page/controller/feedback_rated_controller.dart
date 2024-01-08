import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/feedback_rated_page/models/feedback_rated_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FeedbackRatedPage.
///
/// This class manages the state of the FeedbackRatedPage, including the
/// current feedbackRatedModelObj
class FeedbackRatedController extends GetxController {
  FeedbackRatedController(this.feedbackRatedModelObj);

  TextEditingController experienceController = TextEditingController();

  Rx<FeedbackRatedModel> feedbackRatedModelObj;

  @override
  void onClose() {
    super.onClose();
    experienceController.dispose();
  }
}
