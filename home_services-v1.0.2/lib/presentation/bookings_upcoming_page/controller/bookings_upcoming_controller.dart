import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_upcoming_page/models/bookings_upcoming_model.dart';

/// A controller class for the BookingsUpcomingPage.
///
/// This class manages the state of the BookingsUpcomingPage, including the
/// current bookingsUpcomingModelObj
class BookingsUpcomingController extends GetxController {
  BookingsUpcomingController(this.bookingsUpcomingModelObj);

  Rx<BookingsUpcomingModel> bookingsUpcomingModelObj;
}
