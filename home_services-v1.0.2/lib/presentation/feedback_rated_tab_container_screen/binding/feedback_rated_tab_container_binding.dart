import '../controller/feedback_rated_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FeedbackRatedTabContainerScreen.
///
/// This class ensures that the FeedbackRatedTabContainerController is created when the
/// FeedbackRatedTabContainerScreen is first loaded.
class FeedbackRatedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackRatedTabContainerController());
  }
}
