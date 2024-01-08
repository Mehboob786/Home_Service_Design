import '../controller/summary_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SummaryScreen.
///
/// This class ensures that the SummaryController is created when the
/// SummaryScreen is first loaded.
class SummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SummaryController());
  }
}
