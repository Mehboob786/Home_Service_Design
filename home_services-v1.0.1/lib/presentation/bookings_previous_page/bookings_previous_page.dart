import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/custom_elevated_button.dart';class BookingsPreviousPage extends StatefulWidget {const BookingsPreviousPage({Key? key}) : super(key: key);

@override BookingsPreviousPageState createState() =>  BookingsPreviousPageState();

 }
class BookingsPreviousPageState extends State<BookingsPreviousPage> with  AutomaticKeepAliveClientMixin<BookingsPreviousPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: Column(children: [SizedBox(height: 15.v), _buildPreviousBooking(context)])))); } 
/// Section Widget
Widget _buildPreviousBooking(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillBlue5001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("19th", style: CustomTextStyles.titleMedium18), SizedBox(height: 2.v), Text("Nov, Saturday", style: CustomTextStyles.titleMedium18)]), Padding(padding: EdgeInsets.only(top: 3.v, bottom: 25.v), child: Text("AC service", style: CustomTextStyles.titleSmallMedium))]), SizedBox(height: 13.v), Row(children: [Container(height: 4.adaptSize, width: 4.adaptSize, margin: EdgeInsets.symmetric(vertical: 6.v), decoration: BoxDecoration(color: appTheme.gray60001, borderRadius: BorderRadius.circular(2.h))), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("General service", style: theme.textTheme.bodyMedium))]), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(right: 36.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: 156.h, text: "Share Feedback", buttonTextStyle: CustomTextStyles.titleSmallOnPrimary, onPressed: () {onTapShareFeedback(context);}), GestureDetector(onTap: () {onTapTxtViewDetails(context);}, child: Padding(padding: EdgeInsets.only(top: 15.v, bottom: 14.v), child: Text("View details", style: CustomTextStyles.titleSmallPrimary)))]))])); } 
/// Navigates to the feedbackRateOurServiceScreen when the action is triggered.
onTapShareFeedback(BuildContext context) { Navigator.pushNamed(context, AppRoutes.feedbackRateOurServiceScreen); } 
/// Navigates to the previousBookingsDetailPageScreen when the action is triggered.
onTapTxtViewDetails(BuildContext context) { Navigator.pushNamed(context, AppRoutes.previousBookingsDetailPageScreen); } 
 }
