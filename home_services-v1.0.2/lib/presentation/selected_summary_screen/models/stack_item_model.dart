import '../../../core/app_export.dart';

/// This class is used in the [stack_item_widget] screen.
class StackItemModel {
  StackItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
