import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/previous_bookings_detail_page_screen/models/previous_bookings_detail_page_model.dart';

/// A controller class for the PreviousBookingsDetailPageScreen.
///
/// This class manages the state of the PreviousBookingsDetailPageScreen, including the
/// current previousBookingsDetailPageModelObj
class PreviousBookingsDetailPageController extends GetxController {
  Rx<PreviousBookingsDetailPageModel> previousBookingsDetailPageModelObj =
      PreviousBookingsDetailPageModel().obs;
}
