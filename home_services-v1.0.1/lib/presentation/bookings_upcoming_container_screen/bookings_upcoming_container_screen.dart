import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/presentation/bookings_upcoming_tab_container_page/bookings_upcoming_tab_container_page.dart';import 'package:home_services/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class BookingsUpcomingContainerScreen extends StatelessWidget {BookingsUpcomingContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.bookingsUpcomingTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.bookingsUpcomingTabContainerPage; case BottomBarEnum.Personal: return "/"; case BottomBarEnum.Bookings: return "/"; case BottomBarEnum.Profile: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.bookingsUpcomingTabContainerPage: return BookingsUpcomingTabContainerPage(); default: return DefaultWidget();} } 
 }
