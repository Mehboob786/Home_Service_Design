import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/successful_booking_four_screen/models/successful_booking_four_model.dart';

/// A controller class for the SuccessfulBookingFourScreen.
///
/// This class manages the state of the SuccessfulBookingFourScreen, including the
/// current successfulBookingFourModelObj
class SuccessfulBookingFourController extends GetxController {
  Rx<SuccessfulBookingFourModel> successfulBookingFourModelObj =
      SuccessfulBookingFourModel().obs;
}
