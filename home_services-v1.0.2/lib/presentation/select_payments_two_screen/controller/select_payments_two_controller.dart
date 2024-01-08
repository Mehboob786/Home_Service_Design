import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/select_payments_two_screen/models/select_payments_two_model.dart';

/// A controller class for the SelectPaymentsTwoScreen.
///
/// This class manages the state of the SelectPaymentsTwoScreen, including the
/// current selectPaymentsTwoModelObj
class SelectPaymentsTwoController extends GetxController {
  Rx<SelectPaymentsTwoModel> selectPaymentsTwoModelObj =
      SelectPaymentsTwoModel().obs;

  Rx<String> radioGroup = "".obs;
}
