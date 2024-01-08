import '../../../core/app_export.dart';
import 'diamondfaciallist_item_model.dart';

/// This class defines the variables used in the [previous_bookings_detail_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreviousBookingsDetailPageModel {
  Rx<List<DiamondfaciallistItemModel>> diamondfaciallistItemList = Rx([
    DiamondfaciallistItemModel(
        image: ImageConstant.imgImage47.obs,
        title: "AC Service".obs,
        text1: "1 hrs".obs,
        text2: "Includes lorem ipsum".obs),
    DiamondfaciallistItemModel(
        image: ImageConstant.imgImage56.obs,
        title: "AC cleanup".obs,
        text1: "30 mins".obs,
        text2: "Includes lorem".obs)
  ]);
}
