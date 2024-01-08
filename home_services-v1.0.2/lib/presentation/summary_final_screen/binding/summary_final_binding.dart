import '../controller/summary_final_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SummaryFinalScreen.
///
/// This class ensures that the SummaryFinalController is created when the
/// SummaryFinalScreen is first loaded.
class SummaryFinalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SummaryFinalController());
  }
}
