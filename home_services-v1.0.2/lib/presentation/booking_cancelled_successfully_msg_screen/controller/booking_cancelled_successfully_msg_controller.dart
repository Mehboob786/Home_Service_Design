import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/booking_cancelled_successfully_msg_screen/models/booking_cancelled_successfully_msg_model.dart';

/// A controller class for the BookingCancelledSuccessfullyMsgScreen.
///
/// This class manages the state of the BookingCancelledSuccessfullyMsgScreen, including the
/// current bookingCancelledSuccessfullyMsgModelObj
class BookingCancelledSuccessfullyMsgController extends GetxController {
  Rx<BookingCancelledSuccessfullyMsgModel>
      bookingCancelledSuccessfullyMsgModelObj =
      BookingCancelledSuccessfullyMsgModel().obs;
}
