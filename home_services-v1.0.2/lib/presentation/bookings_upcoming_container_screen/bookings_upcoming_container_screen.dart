import 'controller/bookings_upcoming_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_upcoming_tab_container_page/bookings_upcoming_tab_container_page.dart';
import 'package:home_services/widgets/custom_bottom_bar.dart';

class BookingsUpcomingContainerScreen
    extends GetWidget<BookingsUpcomingContainerController> {
  const BookingsUpcomingContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.bookingsUpcomingTabContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.bookingsUpcomingTabContainerPage;
      case BottomBarEnum.Personal:
        return "/";
      case BottomBarEnum.Bookings:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.bookingsUpcomingTabContainerPage:
        return BookingsUpcomingTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
