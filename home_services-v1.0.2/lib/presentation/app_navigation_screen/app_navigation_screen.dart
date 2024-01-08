import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen - Latest".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.splashScreenLatestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "1. Categories - Salon for Women".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoriesSalonForWomenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "2. Categories - Salon for Women - Facial for glow"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .categoriesSalonForWomenFacialForGlowScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "3. Categories - Salon for Women - Facial for glow"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .categoriesSalonForWomenFacialForGlow1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "4. Facial for glow - Diamond facial details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .facialForGlowDiamondFacialDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "5. Facial for glow - Diamond facial details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .facialForGlowDiamondFacialDetails1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2. Add New Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "6. Summary final".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.summaryFinalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payments_One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Payments_Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectPaymentsTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Success_Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentSuccessThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Successful Booking_Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.successfulBookingFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookings - Upcoming - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingsUpcomingContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookings - Detail Page One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingsDetailPageOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Previous Bookings - Detail Page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.previousBookingsDetailPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cancel Booking".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cancelBookingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cancel Booking>selected a point".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cancelBookingSelectedAPointScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookings - Detail Page Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingsDetailPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bookings - Detail Page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingsDetailPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manage Address One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.manageAddressOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manage Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.manageAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit / Update Address".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editUpdateAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "6 .Selected Summary screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectedSummaryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Summary".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.summaryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Booking Cancelled successfully msg screen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingCancelledSuccessfullyMsgScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Booking Rescheduled".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.bookingRescheduledScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Feedback > Rate our Service".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.feedbackRateOurServiceScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Feedback > Rated - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.feedbackRatedTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Service Completed".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.serviceCompletedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Onboarding screen 1 (real images) One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreen1RealImagesOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding screen 2 (real images)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreen2RealImagesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding screen 3 (real images)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreen3RealImagesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Enter No One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginEnterNoOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Enter No".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginEnterNoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Enter OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Enter OTP One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enterOtpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding screen 1 (real images)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreen1RealImagesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Onboarding screen 2 (real images) One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreen2RealImagesOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Onboarding screen 3 (real images) One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.onboardingScreen3RealImagesOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
