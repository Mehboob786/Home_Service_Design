import '../controller/enter_otp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnterOtpScreen.
///
/// This class ensures that the EnterOtpController is created when the
/// EnterOtpScreen is first loaded.
class EnterOtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterOtpController());
  }
}
