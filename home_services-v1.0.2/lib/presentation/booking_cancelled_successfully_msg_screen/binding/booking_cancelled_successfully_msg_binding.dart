import '../controller/booking_cancelled_successfully_msg_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingCancelledSuccessfullyMsgScreen.
///
/// This class ensures that the BookingCancelledSuccessfullyMsgController is created when the
/// BookingCancelledSuccessfullyMsgScreen is first loaded.
class BookingCancelledSuccessfullyMsgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingCancelledSuccessfullyMsgController());
  }
}
