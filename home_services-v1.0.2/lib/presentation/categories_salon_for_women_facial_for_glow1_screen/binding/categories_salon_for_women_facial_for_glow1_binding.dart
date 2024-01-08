import '../controller/categories_salon_for_women_facial_for_glow1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoriesSalonForWomenFacialForGlow1Screen.
///
/// This class ensures that the CategoriesSalonForWomenFacialForGlow1Controller is created when the
/// CategoriesSalonForWomenFacialForGlow1Screen is first loaded.
class CategoriesSalonForWomenFacialForGlow1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesSalonForWomenFacialForGlow1Controller());
  }
}
