import '../controller/bookings_detail_page_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BookingsDetailPageOneScreen.
///
/// This class ensures that the BookingsDetailPageOneController is created when the
/// BookingsDetailPageOneScreen is first loaded.
class BookingsDetailPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsDetailPageOneController());
  }
}
