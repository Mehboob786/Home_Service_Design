import '../controller/categories_salon_for_women_facial_for_glow_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoriesSalonForWomenFacialForGlowScreen.
///
/// This class ensures that the CategoriesSalonForWomenFacialForGlowController is created when the
/// CategoriesSalonForWomenFacialForGlowScreen is first loaded.
class CategoriesSalonForWomenFacialForGlowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesSalonForWomenFacialForGlowController());
  }
}
