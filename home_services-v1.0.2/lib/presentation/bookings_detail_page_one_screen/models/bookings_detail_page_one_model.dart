import '../../../core/app_export.dart';
import 'diamondfacialcomponentlist_item_model.dart';

/// This class defines the variables used in the [bookings_detail_page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingsDetailPageOneModel {
  Rx<List<DiamondfacialcomponentlistItemModel>>
      diamondfacialcomponentlistItemList = Rx([
    DiamondfacialcomponentlistItemModel(
        image: ImageConstant.imgImage23100x100.obs,
        title: "Diamond Facial".obs,
        duration: "2 hrs".obs,
        description: "Includes lorem ipsum".obs),
    DiamondfacialcomponentlistItemModel(
        image: ImageConstant.imgImage46.obs,
        title: "Cleanup".obs,
        duration: "30 mins".obs,
        description: "Includes lorem".obs)
  ]);
}
