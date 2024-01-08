import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/booking_rescheduled_screen/models/booking_rescheduled_model.dart';

/// A controller class for the BookingRescheduledScreen.
///
/// This class manages the state of the BookingRescheduledScreen, including the
/// current bookingRescheduledModelObj
class BookingRescheduledController extends GetxController {
  Rx<BookingRescheduledModel> bookingRescheduledModelObj =
      BookingRescheduledModel().obs;
}
