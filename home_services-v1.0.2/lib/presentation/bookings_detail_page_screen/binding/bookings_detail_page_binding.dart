import '../controller/bookings_detail_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingsDetailPageScreen.
///
/// This class ensures that the BookingsDetailPageController is created when the
/// BookingsDetailPageScreen is first loaded.
class BookingsDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsDetailPageController());
  }
}
