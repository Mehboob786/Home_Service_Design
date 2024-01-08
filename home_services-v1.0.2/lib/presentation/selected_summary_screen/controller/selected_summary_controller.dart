import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/selected_summary_screen/models/selected_summary_model.dart';

/// A controller class for the SelectedSummaryScreen.
///
/// This class manages the state of the SelectedSummaryScreen, including the
/// current selectedSummaryModelObj
class SelectedSummaryController extends GetxController {
  Rx<SelectedSummaryModel> selectedSummaryModelObj = SelectedSummaryModel().obs;

  Rx<bool> jobscompleted = false.obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;
}
