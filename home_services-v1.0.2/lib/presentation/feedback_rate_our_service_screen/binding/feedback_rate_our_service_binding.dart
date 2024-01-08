import '../controller/feedback_rate_our_service_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FeedbackRateOurServiceScreen.
///
/// This class ensures that the FeedbackRateOurServiceController is created when the
/// FeedbackRateOurServiceScreen is first loaded.
class FeedbackRateOurServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbackRateOurServiceController());
  }
}
