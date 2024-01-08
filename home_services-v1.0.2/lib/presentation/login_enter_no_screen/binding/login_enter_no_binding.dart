import '../controller/login_enter_no_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginEnterNoScreen.
///
/// This class ensures that the LoginEnterNoController is created when the
/// LoginEnterNoScreen is first loaded.
class LoginEnterNoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginEnterNoController());
  }
}
