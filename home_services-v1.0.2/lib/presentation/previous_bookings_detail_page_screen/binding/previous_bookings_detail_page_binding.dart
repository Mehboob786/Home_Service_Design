import '../controller/previous_bookings_detail_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PreviousBookingsDetailPageScreen.
///
/// This class ensures that the PreviousBookingsDetailPageController is created when the
/// PreviousBookingsDetailPageScreen is first loaded.
class PreviousBookingsDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PreviousBookingsDetailPageController());
  }
}
