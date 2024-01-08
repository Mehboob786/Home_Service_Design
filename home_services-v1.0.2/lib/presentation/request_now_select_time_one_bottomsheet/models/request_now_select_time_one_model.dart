import 'chipview2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [request_now_select_time_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class RequestNowSelectTimeOneModel {
  Rx<List<Chipview2ItemModel>> chipview2ItemList =
      Rx(List.generate(6, (index) => Chipview2ItemModel()));
}
