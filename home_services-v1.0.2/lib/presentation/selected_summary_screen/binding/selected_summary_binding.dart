import '../controller/selected_summary_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectedSummaryScreen.
///
/// This class ensures that the SelectedSummaryController is created when the
/// SelectedSummaryScreen is first loaded.
class SelectedSummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectedSummaryController());
  }
}
