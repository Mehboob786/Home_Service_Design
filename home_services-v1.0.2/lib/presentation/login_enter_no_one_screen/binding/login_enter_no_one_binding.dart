import '../controller/login_enter_no_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginEnterNoOneScreen.
///
/// This class ensures that the LoginEnterNoOneController is created when the
/// LoginEnterNoOneScreen is first loaded.
class LoginEnterNoOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginEnterNoOneController());
  }
}
