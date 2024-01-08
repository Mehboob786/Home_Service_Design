import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/request_now_select_time_one_bottomsheet/models/request_now_select_time_one_model.dart';

/// A controller class for the RequestNowSelectTimeOneBottomsheet.
///
/// This class manages the state of the RequestNowSelectTimeOneBottomsheet, including the
/// current requestNowSelectTimeOneModelObj
class RequestNowSelectTimeOneController extends GetxController {
  Rx<RequestNowSelectTimeOneModel> requestNowSelectTimeOneModelObj =
      RequestNowSelectTimeOneModel().obs;
}
