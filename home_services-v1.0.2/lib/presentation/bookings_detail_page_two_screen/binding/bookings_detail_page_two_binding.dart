import '../controller/bookings_detail_page_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingsDetailPageTwoScreen.
///
/// This class ensures that the BookingsDetailPageTwoController is created when the
/// BookingsDetailPageTwoScreen is first loaded.
class BookingsDetailPageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsDetailPageTwoController());
  }
}
