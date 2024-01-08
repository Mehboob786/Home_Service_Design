import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/manage_address_one_screen/models/manage_address_one_model.dart';

/// A controller class for the ManageAddressOneScreen.
///
/// This class manages the state of the ManageAddressOneScreen, including the
/// current manageAddressOneModelObj
class ManageAddressOneController extends GetxController {
  Rx<ManageAddressOneModel> manageAddressOneModelObj =
      ManageAddressOneModel().obs;
}
