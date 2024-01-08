import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/categories_salon_for_women_facial_for_glow_screen/models/categories_salon_for_women_facial_for_glow_model.dart';

/// A controller class for the CategoriesSalonForWomenFacialForGlowScreen.
///
/// This class manages the state of the CategoriesSalonForWomenFacialForGlowScreen, including the
/// current categoriesSalonForWomenFacialForGlowModelObj
class CategoriesSalonForWomenFacialForGlowController extends GetxController {
  Rx<CategoriesSalonForWomenFacialForGlowModel>
      categoriesSalonForWomenFacialForGlowModelObj =
      CategoriesSalonForWomenFacialForGlowModel().obs;
}
