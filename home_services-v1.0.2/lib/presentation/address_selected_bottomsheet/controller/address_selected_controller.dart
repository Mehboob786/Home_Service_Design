import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/address_selected_bottomsheet/models/address_selected_model.dart';

/// A controller class for the AddressSelectedBottomsheet.
///
/// This class manages the state of the AddressSelectedBottomsheet, including the
/// current addressSelectedModelObj
class AddressSelectedController extends GetxController {
  Rx<AddressSelectedModel> addressSelectedModelObj = AddressSelectedModel().obs;

  Rx<String> radioGroup = "".obs;
}
