import 'controller/bookings_previous_controller.dart';
import 'models/bookings_previous_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BookingsPreviousPage extends StatelessWidget {
  BookingsPreviousPage({Key? key}) : super(key: key);

  BookingsPreviousController controller =
      Get.put(BookingsPreviousController(BookingsPreviousModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  SizedBox(height: 15.v),
                  _buildPreviousBooking()
                ]))));
  }

  /// Section Widget
  Widget _buildPreviousBooking() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillBlue5001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_19th".tr,
                              style: CustomTextStyles.titleMedium18),
                          SizedBox(height: 2.v),
                          Text("lbl_nov_saturday".tr,
                              style: CustomTextStyles.titleMedium18)
                        ]),
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, bottom: 25.v),
                        child: Text("lbl_ac_service".tr,
                            style: CustomTextStyles.titleSmallMedium))
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
                    child: Text("lbl_general_service".tr,
                        style: theme.textTheme.bodyMedium))
              ]),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(right: 36.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            width: 156.h,
                            text: "lbl_share_feedback".tr,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallOnPrimary,
                            onPressed: () {
                              onTapShareFeedback();
                            }),
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

  /// Navigates to the feedbackRateOurServiceScreen when the action is triggered.
  onTapShareFeedback() {
    Get.toNamed(
      AppRoutes.feedbackRateOurServiceScreen,
    );
  }

  /// Navigates to the previousBookingsDetailPageScreen when the action is triggered.
  onTapTxtViewDetails() {
    Get.toNamed(
      AppRoutes.previousBookingsDetailPageScreen,
    );
  }
}
