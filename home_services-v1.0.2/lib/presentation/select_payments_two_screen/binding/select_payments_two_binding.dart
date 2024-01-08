import '../controller/select_payments_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectPaymentsTwoScreen.
///
/// This class ensures that the SelectPaymentsTwoController is created when the
/// SelectPaymentsTwoScreen is first loaded.
class SelectPaymentsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectPaymentsTwoController());
  }
}
