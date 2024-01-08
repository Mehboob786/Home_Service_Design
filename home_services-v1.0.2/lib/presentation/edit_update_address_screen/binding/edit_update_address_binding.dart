import '../controller/edit_update_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditUpdateAddressScreen.
///
/// This class ensures that the EditUpdateAddressController is created when the
/// EditUpdateAddressScreen is first loaded.
class EditUpdateAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditUpdateAddressController());
  }
}
