import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/payment_success_three_screen/models/payment_success_three_model.dart';

/// A controller class for the PaymentSuccessThreeScreen.
///
/// This class manages the state of the PaymentSuccessThreeScreen, including the
/// current paymentSuccessThreeModelObj
class PaymentSuccessThreeController extends GetxController {
  Rx<PaymentSuccessThreeModel> paymentSuccessThreeModelObj =
      PaymentSuccessThreeModel().obs;
}
