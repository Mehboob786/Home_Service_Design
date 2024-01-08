import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/request_now_select_time_bottomsheet/models/request_now_select_time_model.dart';

/// A controller class for the RequestNowSelectTimeBottomsheet.
///
/// This class manages the state of the RequestNowSelectTimeBottomsheet, including the
/// current requestNowSelectTimeModelObj
class RequestNowSelectTimeController extends GetxController {
  Rx<RequestNowSelectTimeModel> requestNowSelectTimeModelObj =
      RequestNowSelectTimeModel().obs;
}
