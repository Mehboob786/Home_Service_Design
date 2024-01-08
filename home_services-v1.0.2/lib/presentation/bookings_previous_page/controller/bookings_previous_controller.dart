import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_previous_page/models/bookings_previous_model.dart';

/// A controller class for the BookingsPreviousPage.
///
/// This class manages the state of the BookingsPreviousPage, including the
/// current bookingsPreviousModelObj
class BookingsPreviousController extends GetxController {
  BookingsPreviousController(this.bookingsPreviousModelObj);

  Rx<BookingsPreviousModel> bookingsPreviousModelObj;
}
