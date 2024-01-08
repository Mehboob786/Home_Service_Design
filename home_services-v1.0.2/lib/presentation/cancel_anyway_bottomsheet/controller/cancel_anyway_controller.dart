import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/cancel_anyway_bottomsheet/models/cancel_anyway_model.dart';

/// A controller class for the CancelAnywayBottomsheet.
///
/// This class manages the state of the CancelAnywayBottomsheet, including the
/// current cancelAnywayModelObj
class CancelAnywayController extends GetxController {
  Rx<CancelAnywayModel> cancelAnywayModelObj = CancelAnywayModel().obs;
}
