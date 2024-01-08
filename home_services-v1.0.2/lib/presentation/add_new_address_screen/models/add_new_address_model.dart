import 'itemtotal_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [add_new_address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewAddressModel {
  Rx<List<ItemtotalItemModel>> itemtotalItemList =
      Rx(List.generate(4, (index) => ItemtotalItemModel()));
}
