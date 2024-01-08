import '../controller/payments_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentsOneScreen.
///
/// This class ensures that the PaymentsOneController is created when the
/// PaymentsOneScreen is first loaded.
class PaymentsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentsOneController());
  }
}
