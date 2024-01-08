import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/summary_final_screen/models/summary_final_model.dart';

/// A controller class for the SummaryFinalScreen.
///
/// This class manages the state of the SummaryFinalScreen, including the
/// current summaryFinalModelObj
class SummaryFinalController extends GetxController {
  Rx<SummaryFinalModel> summaryFinalModelObj = SummaryFinalModel().obs;
}
