import '../controller/payment_success_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessThreeScreen.
///
/// This class ensures that the PaymentSuccessThreeController is created when the
/// PaymentSuccessThreeScreen is first loaded.
class PaymentSuccessThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessThreeController());
  }
}
