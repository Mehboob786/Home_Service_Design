import 'controller/bookings_upcoming_tab_container_controller.dart';
import 'models/bookings_upcoming_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_previous_page/bookings_previous_page.dart';
import 'package:home_services/presentation/bookings_upcoming_page/bookings_upcoming_page.dart';

class BookingsUpcomingTabContainerPage extends StatelessWidget {
  BookingsUpcomingTabContainerPage({Key? key})
      : super(
          key: key,
        );

  BookingsUpcomingTabContainerController controller = Get.put(
      BookingsUpcomingTabContainerController(
          BookingsUpcomingTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildTabview(),
              SizedBox(
                height: 659.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    BookingsUpcomingPage(),
                    BookingsPreviousPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 33.v,
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray50001,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_upcoming".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_previous".tr,
            ),
          ),
        ],
      ),
    );
  }
}
