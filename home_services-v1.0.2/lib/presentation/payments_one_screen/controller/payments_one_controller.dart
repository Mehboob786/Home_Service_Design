import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/payments_one_screen/models/payments_one_model.dart';

/// A controller class for the PaymentsOneScreen.
///
/// This class manages the state of the PaymentsOneScreen, including the
/// current paymentsOneModelObj
class PaymentsOneController extends GetxController {
  Rx<PaymentsOneModel> paymentsOneModelObj = PaymentsOneModel().obs;

  Rx<String> radioGroup = "".obs;
}
