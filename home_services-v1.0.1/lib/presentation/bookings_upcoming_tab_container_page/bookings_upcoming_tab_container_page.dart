import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/bookings_previous_page/bookings_previous_page.dart';
import 'package:home_services/presentation/bookings_upcoming_page/bookings_upcoming_page.dart';

// ignore_for_file: must_be_immutable
class BookingsUpcomingTabContainerPage extends StatefulWidget {
  const BookingsUpcomingTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  BookingsUpcomingTabContainerPageState createState() =>
      BookingsUpcomingTabContainerPageState();
}

class BookingsUpcomingTabContainerPageState
    extends State<BookingsUpcomingTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildTabview(context),
              SizedBox(
                height: 659.v,
                child: TabBarView(
                  controller: tabviewController,
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 33.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
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
              "Upcoming",
            ),
          ),
          Tab(
            child: Text(
              "Previous",
            ),
          ),
        ],
      ),
    );
  }
}
