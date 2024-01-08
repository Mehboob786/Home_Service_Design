import 'timeone_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [select_date_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectDateModel {
  Rx<List<TimeoneItemModel>> timeoneItemList =
      Rx(List.generate(3, (index) => TimeoneItemModel()));
}
