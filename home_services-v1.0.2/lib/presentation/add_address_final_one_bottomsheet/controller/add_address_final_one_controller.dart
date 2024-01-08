import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/add_address_final_one_bottomsheet/models/add_address_final_one_model.dart';

/// A controller class for the AddAddressFinalOneBottomsheet.
///
/// This class manages the state of the AddAddressFinalOneBottomsheet, including the
/// current addAddressFinalOneModelObj
class AddAddressFinalOneController extends GetxController {
  Rx<AddAddressFinalOneModel> addAddressFinalOneModelObj =
      AddAddressFinalOneModel().obs;

  Rx<String> radioGroup = "".obs;
}
