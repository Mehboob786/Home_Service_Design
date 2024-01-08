import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/manage_address_screen/models/manage_address_model.dart';

/// A controller class for the ManageAddressScreen.
///
/// This class manages the state of the ManageAddressScreen, including the
/// current manageAddressModelObj
class ManageAddressController extends GetxController {
  Rx<ManageAddressModel> manageAddressModelObj = ManageAddressModel().obs;
}
