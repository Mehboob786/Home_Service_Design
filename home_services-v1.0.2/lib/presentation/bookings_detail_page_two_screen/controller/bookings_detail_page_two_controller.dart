import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_detail_page_two_screen/models/bookings_detail_page_two_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the BookingsDetailPageTwoScreen.
///
/// This class manages the state of the BookingsDetailPageTwoScreen, including the
/// current bookingsDetailPageTwoModelObj
class BookingsDetailPageTwoController extends GetxController {
  Rx<BookingsDetailPageTwoModel> bookingsDetailPageTwoModelObj =
      BookingsDetailPageTwoModel().obs;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;
}
