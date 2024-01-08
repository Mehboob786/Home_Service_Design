import '../controller/bookings_upcoming_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingsUpcomingContainerScreen.
///
/// This class ensures that the BookingsUpcomingContainerController is created when the
/// BookingsUpcomingContainerScreen is first loaded.
class BookingsUpcomingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsUpcomingContainerController());
  }
}
