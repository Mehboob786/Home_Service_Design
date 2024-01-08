import 'controller/bookings_upcoming_controller.dart';
import 'models/bookings_upcoming_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BookingsUpcomingPage extends StatelessWidget {
  BookingsUpcomingPage({Key? key}) : super(key: key);

  BookingsUpcomingController controller =
      Get.put(BookingsUpcomingController(BookingsUpcomingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  SizedBox(height: 15.v),
                  _buildUpcomingBooking()
                ]))));
  }

  /// Section Widget
  Widget _buildUpcomingBooking() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillBlue5001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_22nd".tr,
                          style: CustomTextStyles.titleMedium18),
                      Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text("lbl_salon_for_woman".tr,
                              style: CustomTextStyles.titleSmallMedium))
                    ]),
                SizedBox(height: 2.v),
                Text("lbl_nov_tuesday".tr,
                    style: CustomTextStyles.titleMedium18)
              ]),
              SizedBox(height: 13.v),
              Row(children: [
                Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                    decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(2.h))),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("lbl_diamond_facial".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 5.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(top: 5.v, bottom: 7.v),
                    decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(2.h))),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text("lbl_cleanup".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 36.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            width: 156.h,
                            text: "lbl_reshedule".tr,
                            buttonTextStyle: CustomTextStyles
                                .titleSmallSFProDisplayOnPrimary),
                        GestureDetector(
                            onTap: () {
                              onTapTxtViewDetails();
                            },
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 15.v, bottom: 14.v),
                                child: Text("lbl_view_details".tr,
                                    style: CustomTextStyles.titleSmallPrimary)))
                      ]))
            ]));
  }

  /// Navigates to the bookingsDetailPageOneScreen when the action is triggered.
  onTapTxtViewDetails() {
    Get.toNamed(
      AppRoutes.bookingsDetailPageOneScreen,
    );
  }
}
