import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_detail_page_one_screen/models/bookings_detail_page_one_model.dart';

/// A controller class for the BookingsDetailPageOneScreen.
///
/// This class manages the state of the BookingsDetailPageOneScreen, including the
/// current bookingsDetailPageOneModelObj
class BookingsDetailPageOneController extends GetxController {
  Rx<BookingsDetailPageOneModel> bookingsDetailPageOneModelObj =
      BookingsDetailPageOneModel().obs;
}
