import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen - Latest",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenLatestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1. Categories - Salon for Women",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoriesSalonForWomenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "2. Categories - Salon for Women - Facial for glow",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .categoriesSalonForWomenFacialForGlowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "3. Categories - Salon for Women - Facial for glow",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .categoriesSalonForWomenFacialForGlow1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "4. Facial for glow - Diamond facial details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .facialForGlowDiamondFacialDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "5. Facial for glow - Diamond facial details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .facialForGlowDiamondFacialDetails1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Add New Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "6. Summary final",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.summaryFinalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payments_One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select Payments_Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectPaymentsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Payment Success_Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentSuccessThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Successful Booking_Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successfulBookingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bookings - Upcoming - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.bookingsUpcomingContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bookings - Detail Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingsDetailPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Previous Bookings - Detail Page",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.previousBookingsDetailPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cancel Booking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cancelBookingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cancel Booking>selected a point",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.cancelBookingSelectedAPointScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bookings - Detail Page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingsDetailPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bookings - Detail Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingsDetailPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Manage Address One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.manageAddressOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Manage Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.manageAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Edit / Update Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.editUpdateAddressScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "6 .Selected Summary screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectedSummaryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Summary",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.summaryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Booking Cancelled successfully msg screen",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.bookingCancelledSuccessfullyMsgScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Booking Rescheduled",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookingRescheduledScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Feedback > Rate our Service",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.feedbackRateOurServiceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Feedback > Rated - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.feedbackRatedTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service Completed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.serviceCompletedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding screen 1 (real images) One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingScreen1RealImagesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding screen 2 (real images)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingScreen2RealImagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding screen 3 (real images)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingScreen3RealImagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Enter No One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginEnterNoOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Enter No",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginEnterNoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Enter OTP One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.enterOtpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding screen 1 (real images)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingScreen1RealImagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding screen 2 (real images) One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.onboardingScreen2RealImagesOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding screen 3 (real images) One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
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
  Widget _buildAppNavigation(BuildContext context) {
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
                "App Navigation",
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
                "Check your app's UI from the below demo screens of your app.",
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
  Widget _buildScreenTitle(
    BuildContext context, {
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
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
