import '../controller/booking_rescheduled_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingRescheduledScreen.
///
/// This class ensures that the BookingRescheduledController is created when the
/// BookingRescheduledScreen is first loaded.
class BookingRescheduledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingRescheduledController());
  }
}
