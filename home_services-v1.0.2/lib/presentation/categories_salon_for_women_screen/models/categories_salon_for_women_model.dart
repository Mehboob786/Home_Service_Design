import '../../../core/app_export.dart';
import 'facialforglow_item_model.dart';

/// This class defines the variables used in the [categories_salon_for_women_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesSalonForWomenModel {
  Rx<List<FacialforglowItemModel>> facialforglowItemList = Rx([
    FacialforglowItemModel(
        facialImage: ImageConstant.imgImage3.obs,
        facialName: "Facial for glow".obs,
        facialPrice: "₹599 onwards".obs),
    FacialforglowItemModel(
        facialImage: ImageConstant.imgImage13.obs,
        facialName: "Manicure".obs,
        facialPrice: "₹499 onwards".obs),
    FacialforglowItemModel(
        facialImage: ImageConstant.imgImage14.obs,
        facialName: "Pediure".obs,
        facialPrice: "₹499 onwards".obs),
    FacialforglowItemModel(
        facialImage: ImageConstant.imgImage15.obs,
        facialName: "Threading".obs,
        facialPrice: "₹59 onwards".obs)
  ]);
}
