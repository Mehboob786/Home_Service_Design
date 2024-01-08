import '../controller/cancel_booking_selected_a_point_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CancelBookingSelectedAPointScreen.
///
/// This class ensures that the CancelBookingSelectedAPointController is created when the
/// CancelBookingSelectedAPointScreen is first loaded.
class CancelBookingSelectedAPointBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelBookingSelectedAPointController());
  }
}
