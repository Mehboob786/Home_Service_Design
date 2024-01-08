import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_detail_page_screen/models/bookings_detail_page_model.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the BookingsDetailPageScreen.
///
/// This class manages the state of the BookingsDetailPageScreen, including the
/// current bookingsDetailPageModelObj
class BookingsDetailPageController extends GetxController {
  Rx<BookingsDetailPageModel> bookingsDetailPageModelObj =
      BookingsDetailPageModel().obs;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;
}
