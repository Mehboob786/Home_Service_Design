import '../bookings_detail_page_two_screen/widgets/diamondfacialcomponent_item_widget.dart';import '../bookings_detail_page_two_screen/widgets/timeone4_item_widget.dart';import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:home_services/widgets/app_bar/appbar_title.dart';import 'package:home_services/widgets/app_bar/custom_app_bar.dart';import 'package:home_services/widgets/custom_elevated_button.dart';import 'package:table_calendar/table_calendar.dart';
// ignore_for_file: must_be_immutable
class BookingsDetailPageTwoScreen extends StatelessWidget {BookingsDetailPageTwoScreen({Key? key}) : super(key: key);

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

DateTime focusedDay = DateTime.now();

RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildDiamondFacialComponent(context), SizedBox(height: 37.v), Text("Select new date and time ", style: theme.textTheme.titleMedium), SizedBox(height: 10.v), Text("Your service will take approx. 45 mins", style: theme.textTheme.bodyMedium), SizedBox(height: 40.v), _buildCalendar(context), SizedBox(height: 32.v), _buildTimeOne(context), SizedBox(height: 35.v), CustomElevatedButton(text: "Confirm new slot", buttonStyle: CustomButtonStyles.fillBlueGray, buttonTextStyle: CustomTextStyles.bodyLargeGray60002), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 61.h, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgClock, margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v), onTap: () {onTapClock(context);}), centerTitle: true, title: AppbarTitle(text: "Reschedule Booking")); } 
/// Section Widget
Widget _buildDiamondFacialComponent(BuildContext context) { return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: 2, itemBuilder: (context, index) {return DiamondfacialcomponentItemWidget();}); } 
/// Section Widget
Widget _buildCalendar(BuildContext context) { return SizedBox(height: 58.v, width: 199.h, child: TableCalendar(locale: 'en_US', firstDay: DateTime(DateTime.now().year - 5), lastDay: DateTime(DateTime.now().year + 5), calendarFormat: CalendarFormat.month, rangeSelectionMode: rangeSelectionMode, startingDayOfWeek: StartingDayOfWeek.sunday, headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true), calendarStyle: CalendarStyle(outsideDaysVisible: false, isTodayHighlighted: true), daysOfWeekStyle: DaysOfWeekStyle(), headerVisible: false, focusedDay: focusedDay, rangeStartDay: rangeStart, rangeEndDay: rangeEnd, onDaySelected: (selectedDay, focusedDay) {}, onRangeSelected: (start, end, focusedDay) {}, onPageChanged: (focusedDay) {})); } 
/// Section Widget
Widget _buildTimeOne(BuildContext context) { return Wrap(runSpacing: 14.v, spacing: 14.h, children: List<Widget>.generate(3, (index) => Timeone4ItemWidget())); } 
/// Navigates to the bookingsDetailPageOneScreen when the action is triggered.
onTapClock(BuildContext context) { Navigator.pushNamed(context, AppRoutes.bookingsDetailPageOneScreen); } 
 }
