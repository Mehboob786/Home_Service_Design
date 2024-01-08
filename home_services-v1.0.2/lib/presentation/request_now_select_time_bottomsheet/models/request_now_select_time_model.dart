import 'chipview_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [request_now_select_time_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class RequestNowSelectTimeModel {
  Rx<List<ChipviewItemModel>> chipviewItemList =
      Rx(List.generate(6, (index) => ChipviewItemModel()));
}
