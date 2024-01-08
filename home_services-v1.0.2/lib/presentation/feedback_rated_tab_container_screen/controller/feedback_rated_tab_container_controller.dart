import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/feedback_rated_tab_container_screen/models/feedback_rated_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FeedbackRatedTabContainerScreen.
///
/// This class manages the state of the FeedbackRatedTabContainerScreen, including the
/// current feedbackRatedTabContainerModelObj
class FeedbackRatedTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<FeedbackRatedTabContainerModel> feedbackRatedTabContainerModelObj =
      FeedbackRatedTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
