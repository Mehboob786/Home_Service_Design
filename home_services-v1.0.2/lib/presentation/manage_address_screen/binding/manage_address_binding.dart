import '../controller/manage_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManageAddressScreen.
///
/// This class ensures that the ManageAddressController is created when the
/// ManageAddressScreen is first loaded.
class ManageAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageAddressController());
  }
}
