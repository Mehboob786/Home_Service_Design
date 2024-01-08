import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/categories_salon_for_women_screen/models/categories_salon_for_women_model.dart';

/// A controller class for the CategoriesSalonForWomenScreen.
///
/// This class manages the state of the CategoriesSalonForWomenScreen, including the
/// current categoriesSalonForWomenModelObj
class CategoriesSalonForWomenController extends GetxController {
  Rx<CategoriesSalonForWomenModel> categoriesSalonForWomenModelObj =
      CategoriesSalonForWomenModel().obs;
}
