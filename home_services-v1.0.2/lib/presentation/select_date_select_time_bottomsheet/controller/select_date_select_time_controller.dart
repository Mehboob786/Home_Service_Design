import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/select_date_select_time_bottomsheet/models/select_date_select_time_model.dart';

/// A controller class for the SelectDateSelectTimeBottomsheet.
///
/// This class manages the state of the SelectDateSelectTimeBottomsheet, including the
/// current selectDateSelectTimeModelObj
class SelectDateSelectTimeController extends GetxController {
  Rx<SelectDateSelectTimeModel> selectDateSelectTimeModelObj =
      SelectDateSelectTimeModel().obs;
}
