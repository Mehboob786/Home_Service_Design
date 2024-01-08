import '../controller/successful_booking_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SuccessfulBookingFourScreen.
///
/// This class ensures that the SuccessfulBookingFourController is created when the
/// SuccessfulBookingFourScreen is first loaded.
class SuccessfulBookingFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfulBookingFourController());
  }
}
