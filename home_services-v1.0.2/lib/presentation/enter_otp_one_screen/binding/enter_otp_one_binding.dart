import '../controller/enter_otp_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EnterOtpOneScreen.
///
/// This class ensures that the EnterOtpOneController is created when the
/// EnterOtpOneScreen is first loaded.
class EnterOtpOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterOtpOneController());
  }
}
