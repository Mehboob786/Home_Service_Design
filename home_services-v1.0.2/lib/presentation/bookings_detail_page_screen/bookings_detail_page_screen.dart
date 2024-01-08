import '../bookings_detail_page_screen/widgets/diamondfacialcomponent1_item_widget.dart';
import '../bookings_detail_page_screen/widgets/timeone6_item_widget.dart';
import 'controller/bookings_detail_page_controller.dart';
import 'models/diamondfacialcomponent1_item_model.dart';
import 'models/timeone6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingsDetailPageScreen extends GetWidget<BookingsDetailPageController> {
  const BookingsDetailPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDiamondFacialComponent(),
                      SizedBox(height: 37.v),
                      Text("msg_select_new_date".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 10.v),
                      Text("msg_your_service_will".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 40.v),
                      _buildCalendar(),
                      SizedBox(height: 32.v),
                      _buildTimeOne(),
                      SizedBox(height: 35.v),
                      CustomElevatedButton(
                          text: "msg_confirm_new_slot".tr,
                          onPressed: () {
                            onTapConfirmNewSlot();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgClock,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v)),
        centerTitle: true,
        title: AppbarTitle(text: "msg_reschedule_booking".tr));
  }

  /// Section Widget
  Widget _buildDiamondFacialComponent() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: controller.bookingsDetailPageModelObj.value
            .diamondfacialcomponent1ItemList.value.length,
        itemBuilder: (context, index) {
          Diamondfacialcomponent1ItemModel model = controller
              .bookingsDetailPageModelObj
              .value
              .diamondfacialcomponent1ItemList
              .value[index];
          return Diamondfacialcomponent1ItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Obx(() => SizedBox(
        height: 58.v,
        width: 199.h,
        child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: controller.rangeSelectionMode.value,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            calendarStyle: CalendarStyle(
                outsideDaysVisible: false, isTodayHighlighted: true),
            daysOfWeekStyle: DaysOfWeekStyle(),
            headerVisible: false,
            focusedDay: controller.focusedDay.value,
            rangeStartDay: controller.rangeStart,
            rangeEndDay: controller.rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(controller.selectedDay, selectedDay)) {
                controller.focusedDay.value = focusedDay;
                controller.selectedDay = selectedDay;
                controller.rangeSelectionMode.value =
                    RangeSelectionMode.toggledOn;
              }
            },
            onRangeSelected: (start, end, focusedDay) {
              controller.focusedDay.value = focusedDay;
              controller.rangeEnd = end;
              controller.rangeStart = start;
              controller.rangeSelectionMode.value =
                  RangeSelectionMode.toggledOn;
            },
            onPageChanged: (focusedDay) {
              controller.focusedDay.value = focusedDay;
            })));
  }

  /// Section Widget
  Widget _buildTimeOne() {
    return Obx(() => Wrap(
        runSpacing: 14.v,
        spacing: 14.h,
        children: List<Widget>.generate(
            controller.bookingsDetailPageModelObj.value.timeone6ItemList.value
                .length, (index) {
          Timeone6ItemModel model = controller
              .bookingsDetailPageModelObj.value.timeone6ItemList.value[index];
          return Timeone6ItemWidget(model);
        })));
  }

  /// Navigates to the bookingRescheduledScreen when the action is triggered.
  onTapConfirmNewSlot() {
    Get.toNamed(
      AppRoutes.bookingRescheduledScreen,
    );
  }
}
