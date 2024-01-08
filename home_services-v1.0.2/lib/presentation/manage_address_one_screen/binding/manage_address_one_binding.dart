import '../controller/manage_address_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManageAddressOneScreen.
///
/// This class ensures that the ManageAddressOneController is created when the
/// ManageAddressOneScreen is first loaded.
class ManageAddressOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageAddressOneController());
  }
}
