import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_upcoming_container_screen/models/bookings_upcoming_container_model.dart';

/// A controller class for the BookingsUpcomingContainerScreen.
///
/// This class manages the state of the BookingsUpcomingContainerScreen, including the
/// current bookingsUpcomingContainerModelObj
class BookingsUpcomingContainerController extends GetxController {
  Rx<BookingsUpcomingContainerModel> bookingsUpcomingContainerModelObj =
      BookingsUpcomingContainerModel().obs;
}
