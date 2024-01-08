import '../controller/service_completed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ServiceCompletedScreen.
///
/// This class ensures that the ServiceCompletedController is created when the
/// ServiceCompletedScreen is first loaded.
class ServiceCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceCompletedController());
  }
}
