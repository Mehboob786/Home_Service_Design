import '../../../core/app_export.dart';
import 'diamondfacialcomponent1_item_model.dart';
import 'timeone6_item_model.dart';

/// This class defines the variables used in the [bookings_detail_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingsDetailPageModel {
  Rx<List<Diamondfacialcomponent1ItemModel>> diamondfacialcomponent1ItemList =
      Rx([
    Diamondfacialcomponent1ItemModel(
        image: ImageConstant.imgImage23100x100.obs,
        title: "Diamond Facial".obs,
        duration: "2 hrs".obs,
        description: "Includes dummy info".obs),
    Diamondfacialcomponent1ItemModel(
        image: ImageConstant.imgImage46.obs,
        title: "Cleanup".obs,
        duration: "30 mins".obs,
        description: "Includes dummy info".obs)
  ]);

  Rx<List<Timeone6ItemModel>> timeone6ItemList =
      Rx(List.generate(3, (index) => Timeone6ItemModel()));
}
