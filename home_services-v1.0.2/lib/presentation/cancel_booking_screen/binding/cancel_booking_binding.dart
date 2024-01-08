import '../controller/cancel_booking_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CancelBookingScreen.
///
/// This class ensures that the CancelBookingController is created when the
/// CancelBookingScreen is first loaded.
class CancelBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelBookingController());
  }
}
