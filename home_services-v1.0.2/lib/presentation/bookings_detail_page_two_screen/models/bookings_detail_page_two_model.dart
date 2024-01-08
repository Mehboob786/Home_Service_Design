import '../../../core/app_export.dart';
import 'diamondfacialcomponent_item_model.dart';
import 'timeone4_item_model.dart';

/// This class defines the variables used in the [bookings_detail_page_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingsDetailPageTwoModel {
  Rx<List<DiamondfacialcomponentItemModel>> diamondfacialcomponentItemList =
      Rx([
    DiamondfacialcomponentItemModel(
        image: ImageConstant.imgImage23100x100.obs,
        title: "Diamond Facial".obs,
        duration: "2 hrs".obs,
        description: "Includes dummy info".obs),
    DiamondfacialcomponentItemModel(
        image: ImageConstant.imgImage46.obs,
        title: "Cleanup".obs,
        duration: "30 mins".obs,
        description: "Includes dummy info".obs)
  ]);

  Rx<List<Timeone4ItemModel>> timeone4ItemList =
      Rx(List.generate(3, (index) => Timeone4ItemModel()));
}
