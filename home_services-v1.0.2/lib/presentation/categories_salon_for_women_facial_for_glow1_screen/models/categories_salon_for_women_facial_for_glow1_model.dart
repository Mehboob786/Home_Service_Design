import '../../../core/app_export.dart';
import 'productcard1_item_model.dart';

/// This class defines the variables used in the [categories_salon_for_women_facial_for_glow1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesSalonForWomenFacialForGlow1Model {
  Rx<List<Productcard1ItemModel>> productcard1ItemList = Rx([
    Productcard1ItemModel(
        image: ImageConstant.imgImage24.obs,
        title: "Pearl Facial".obs,
        price1: "₹599".obs,
        price2: "₹899".obs,
        iconButton: ImageConstant.imgFrame.obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage45.obs,
        title: "Gold facial".obs,
        price1: "₹699".obs,
        price2: "₹999".obs,
        iconButton: ImageConstant.imgFrame.obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage23.obs,
        title: "Diamond Facial".obs,
        price1: "₹799".obs,
        price2: "₹1299".obs,
        iconButton: ImageConstant.imgCheckmarkGreen400.obs)
  ]);
}
