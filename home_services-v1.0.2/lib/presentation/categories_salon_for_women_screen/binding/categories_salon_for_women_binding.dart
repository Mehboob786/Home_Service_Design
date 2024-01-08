import '../controller/categories_salon_for_women_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CategoriesSalonForWomenScreen.
///
/// This class ensures that the CategoriesSalonForWomenController is created when the
/// CategoriesSalonForWomenScreen is first loaded.
class CategoriesSalonForWomenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesSalonForWomenController());
  }
}
