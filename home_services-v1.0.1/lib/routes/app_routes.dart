import 'package:flutter/material.dart';
import 'package:home_services/presentation/splash_screen_latest_screen/splash_screen_latest_screen.dart';
import 'package:home_services/presentation/categories_salon_for_women_screen/categories_salon_for_women_screen.dart';
import 'package:home_services/presentation/categories_salon_for_women_facial_for_glow_screen/categories_salon_for_women_facial_for_glow_screen.dart';
import 'package:home_services/presentation/categories_salon_for_women_facial_for_glow1_screen/categories_salon_for_women_facial_for_glow1_screen.dart';
import 'package:home_services/presentation/facial_for_glow_diamond_facial_details_screen/facial_for_glow_diamond_facial_details_screen.dart';
import 'package:home_services/presentation/facial_for_glow_diamond_facial_details1_screen/facial_for_glow_diamond_facial_details1_screen.dart';
import 'package:home_services/presentation/add_new_address_screen/add_new_address_screen.dart';
import 'package:home_services/presentation/summary_final_screen/summary_final_screen.dart';
import 'package:home_services/presentation/payments_one_screen/payments_one_screen.dart';
import 'package:home_services/presentation/select_payments_two_screen/select_payments_two_screen.dart';
import 'package:home_services/presentation/payment_success_three_screen/payment_success_three_screen.dart';
import 'package:home_services/presentation/successful_booking_four_screen/successful_booking_four_screen.dart';
import 'package:home_services/presentation/bookings_upcoming_container_screen/bookings_upcoming_container_screen.dart';
import 'package:home_services/presentation/bookings_detail_page_one_screen/bookings_detail_page_one_screen.dart';
import 'package:home_services/presentation/previous_bookings_detail_page_screen/previous_bookings_detail_page_screen.dart';
import 'package:home_services/presentation/cancel_booking_screen/cancel_booking_screen.dart';
import 'package:home_services/presentation/cancel_booking_selected_a_point_screen/cancel_booking_selected_a_point_screen.dart';
import 'package:home_services/presentation/bookings_detail_page_two_screen/bookings_detail_page_two_screen.dart';
import 'package:home_services/presentation/bookings_detail_page_screen/bookings_detail_page_screen.dart';
import 'package:home_services/presentation/profile_screen/profile_screen.dart';
import 'package:home_services/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:home_services/presentation/manage_address_one_screen/manage_address_one_screen.dart';
import 'package:home_services/presentation/manage_address_screen/manage_address_screen.dart';
import 'package:home_services/presentation/edit_update_address_screen/edit_update_address_screen.dart';
import 'package:home_services/presentation/selected_summary_screen/selected_summary_screen.dart';
import 'package:home_services/presentation/summary_screen/summary_screen.dart';
import 'package:home_services/presentation/booking_cancelled_successfully_msg_screen/booking_cancelled_successfully_msg_screen.dart';
import 'package:home_services/presentation/booking_rescheduled_screen/booking_rescheduled_screen.dart';
import 'package:home_services/presentation/feedback_rate_our_service_screen/feedback_rate_our_service_screen.dart';
import 'package:home_services/presentation/feedback_rated_tab_container_screen/feedback_rated_tab_container_screen.dart';
import 'package:home_services/presentation/service_completed_screen/service_completed_screen.dart';
import 'package:home_services/presentation/onboarding_screen_1_real_images_one_screen/onboarding_screen_1_real_images_one_screen.dart';
import 'package:home_services/presentation/onboarding_screen_2_real_images_screen/onboarding_screen_2_real_images_screen.dart';
import 'package:home_services/presentation/onboarding_screen_3_real_images_screen/onboarding_screen_3_real_images_screen.dart';
import 'package:home_services/presentation/login_enter_no_one_screen/login_enter_no_one_screen.dart';
import 'package:home_services/presentation/login_enter_no_screen/login_enter_no_screen.dart';
import 'package:home_services/presentation/enter_otp_screen/enter_otp_screen.dart';
import 'package:home_services/presentation/enter_otp_one_screen/enter_otp_one_screen.dart';
import 'package:home_services/presentation/onboarding_screen_1_real_images_screen/onboarding_screen_1_real_images_screen.dart';
import 'package:home_services/presentation/onboarding_screen_2_real_images_one_screen/onboarding_screen_2_real_images_one_screen.dart';
import 'package:home_services/presentation/onboarding_screen_3_real_images_one_screen/onboarding_screen_3_real_images_one_screen.dart';
import 'package:home_services/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenLatestScreen = '/splash_screen_latest_screen';

  static const String categoriesSalonForWomenScreen =
      '/categories_salon_for_women_screen';

  static const String categoriesSalonForWomenFacialForGlowScreen =
      '/categories_salon_for_women_facial_for_glow_screen';

  static const String categoriesSalonForWomenFacialForGlow1Screen =
      '/categories_salon_for_women_facial_for_glow1_screen';

  static const String facialForGlowDiamondFacialDetailsScreen =
      '/facial_for_glow_diamond_facial_details_screen';

  static const String facialForGlowDiamondFacialDetails1Screen =
      '/facial_for_glow_diamond_facial_details1_screen';

  static const String addNewAddressScreen = '/add_new_address_screen';

  static const String summaryFinalScreen = '/summary_final_screen';

  static const String paymentsOneScreen = '/payments_one_screen';

  static const String selectPaymentsTwoScreen = '/select_payments_two_screen';

  static const String paymentSuccessThreeScreen =
      '/payment_success_three_screen';

  static const String successfulBookingFourScreen =
      '/successful_booking_four_screen';

  static const String bookingsUpcomingPage = '/bookings_upcoming_page';

  static const String bookingsUpcomingTabContainerPage =
      '/bookings_upcoming_tab_container_page';

  static const String bookingsUpcomingContainerScreen =
      '/bookings_upcoming_container_screen';

  static const String bookingsPreviousPage = '/bookings_previous_page';

  static const String bookingsDetailPageOneScreen =
      '/bookings_detail_page_one_screen';

  static const String previousBookingsDetailPageScreen =
      '/previous_bookings_detail_page_screen';

  static const String cancelBookingScreen = '/cancel_booking_screen';

  static const String cancelBookingSelectedAPointScreen =
      '/cancel_booking_selected_a_point_screen';

  static const String bookingsDetailPageTwoScreen =
      '/bookings_detail_page_two_screen';

  static const String bookingsDetailPageScreen = '/bookings_detail_page_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String manageAddressOneScreen = '/manage_address_one_screen';

  static const String manageAddressScreen = '/manage_address_screen';

  static const String editUpdateAddressScreen = '/edit_update_address_screen';

  static const String selectedSummaryScreen = '/selected_summary_screen';

  static const String summaryScreen = '/summary_screen';

  static const String bookingCancelledSuccessfullyMsgScreen =
      '/booking_cancelled_successfully_msg_screen';

  static const String bookingRescheduledScreen = '/booking_rescheduled_screen';

  static const String feedbackRateOurServiceScreen =
      '/feedback_rate_our_service_screen';

  static const String feedbackRatedPage = '/feedback_rated_page';

  static const String feedbackRatedTabContainerScreen =
      '/feedback_rated_tab_container_screen';

  static const String serviceCompletedScreen = '/service_completed_screen';

  static const String onboardingScreen1RealImagesOneScreen =
      '/onboarding_screen_1_real_images_one_screen';

  static const String onboardingScreen2RealImagesScreen =
      '/onboarding_screen_2_real_images_screen';

  static const String onboardingScreen3RealImagesScreen =
      '/onboarding_screen_3_real_images_screen';

  static const String loginEnterNoOneScreen = '/login_enter_no_one_screen';

  static const String loginEnterNoScreen = '/login_enter_no_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String enterOtpOneScreen = '/enter_otp_one_screen';

  static const String onboardingScreen1RealImagesScreen =
      '/onboarding_screen_1_real_images_screen';

  static const String onboardingScreen2RealImagesOneScreen =
      '/onboarding_screen_2_real_images_one_screen';

  static const String onboardingScreen3RealImagesOneScreen =
      '/onboarding_screen_3_real_images_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenLatestScreen: (context) => SplashScreenLatestScreen(),
    categoriesSalonForWomenScreen: (context) => CategoriesSalonForWomenScreen(),
    categoriesSalonForWomenFacialForGlowScreen: (context) =>
        CategoriesSalonForWomenFacialForGlowScreen(),
    categoriesSalonForWomenFacialForGlow1Screen: (context) =>
        CategoriesSalonForWomenFacialForGlow1Screen(),
    facialForGlowDiamondFacialDetailsScreen: (context) =>
        FacialForGlowDiamondFacialDetailsScreen(),
    facialForGlowDiamondFacialDetails1Screen: (context) =>
        FacialForGlowDiamondFacialDetails1Screen(),
    addNewAddressScreen: (context) => AddNewAddressScreen(),
    summaryFinalScreen: (context) => SummaryFinalScreen(),
    paymentsOneScreen: (context) => PaymentsOneScreen(),
    selectPaymentsTwoScreen: (context) => SelectPaymentsTwoScreen(),
    paymentSuccessThreeScreen: (context) => PaymentSuccessThreeScreen(),
    successfulBookingFourScreen: (context) => SuccessfulBookingFourScreen(),
    bookingsUpcomingContainerScreen: (context) =>
        BookingsUpcomingContainerScreen(),
    bookingsDetailPageOneScreen: (context) => BookingsDetailPageOneScreen(),
    previousBookingsDetailPageScreen: (context) =>
        PreviousBookingsDetailPageScreen(),
    cancelBookingScreen: (context) => CancelBookingScreen(),
    cancelBookingSelectedAPointScreen: (context) =>
        CancelBookingSelectedAPointScreen(),
    bookingsDetailPageTwoScreen: (context) => BookingsDetailPageTwoScreen(),
    bookingsDetailPageScreen: (context) => BookingsDetailPageScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    manageAddressOneScreen: (context) => ManageAddressOneScreen(),
    manageAddressScreen: (context) => ManageAddressScreen(),
    editUpdateAddressScreen: (context) => EditUpdateAddressScreen(),
    selectedSummaryScreen: (context) => SelectedSummaryScreen(),
    summaryScreen: (context) => SummaryScreen(),
    bookingCancelledSuccessfullyMsgScreen: (context) =>
        BookingCancelledSuccessfullyMsgScreen(),
    bookingRescheduledScreen: (context) => BookingRescheduledScreen(),
    feedbackRateOurServiceScreen: (context) => FeedbackRateOurServiceScreen(),
    feedbackRatedTabContainerScreen: (context) =>
        FeedbackRatedTabContainerScreen(),
    serviceCompletedScreen: (context) => ServiceCompletedScreen(),
    onboardingScreen1RealImagesOneScreen: (context) =>
        OnboardingScreen1RealImagesOneScreen(),
    onboardingScreen2RealImagesScreen: (context) =>
        OnboardingScreen2RealImagesScreen(),
    onboardingScreen3RealImagesScreen: (context) =>
        OnboardingScreen3RealImagesScreen(),
    loginEnterNoOneScreen: (context) => LoginEnterNoOneScreen(),
    loginEnterNoScreen: (context) => LoginEnterNoScreen(),
    enterOtpScreen: (context) => EnterOtpScreen(),
    enterOtpOneScreen: (context) => EnterOtpOneScreen(),
    onboardingScreen1RealImagesScreen: (context) =>
        OnboardingScreen1RealImagesScreen(),
    onboardingScreen2RealImagesOneScreen: (context) =>
        OnboardingScreen2RealImagesOneScreen(),
    onboardingScreen3RealImagesOneScreen: (context) =>
        OnboardingScreen3RealImagesOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
