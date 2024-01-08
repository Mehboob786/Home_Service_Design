import 'stack_item_model.dart';
import 'widget_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [selected_summary_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectedSummaryModel {
  Rx<List<StackItemModel>> stackItemList =
      Rx(List.generate(1, (index) => StackItemModel()));

  Rx<List<WidgetItemModel>> widgetItemList =
      Rx(List.generate(1, (index) => WidgetItemModel()));
}
