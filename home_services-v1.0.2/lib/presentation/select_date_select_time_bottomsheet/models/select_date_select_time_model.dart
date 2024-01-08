import 'timeone2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [select_date_select_time_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectDateSelectTimeModel {
  Rx<List<Timeone2ItemModel>> timeone2ItemList =
      Rx(List.generate(3, (index) => Timeone2ItemModel()));
}
