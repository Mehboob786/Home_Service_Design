import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/select_date_bottomsheet/models/select_date_model.dart';

/// A controller class for the SelectDateBottomsheet.
///
/// This class manages the state of the SelectDateBottomsheet, including the
/// current selectDateModelObj
class SelectDateController extends GetxController {
  Rx<SelectDateModel> selectDateModelObj = SelectDateModel().obs;
}
