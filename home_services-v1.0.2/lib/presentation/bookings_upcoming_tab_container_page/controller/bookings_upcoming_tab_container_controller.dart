import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_upcoming_tab_container_page/models/bookings_upcoming_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BookingsUpcomingTabContainerPage.
///
/// This class manages the state of the BookingsUpcomingTabContainerPage, including the
/// current bookingsUpcomingTabContainerModelObj
class BookingsUpcomingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  BookingsUpcomingTabContainerController(
      this.bookingsUpcomingTabContainerModelObj);

  Rx<BookingsUpcomingTabContainerModel> bookingsUpcomingTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
