import 'package:flutter/material.dart';import 'package:home_services/core/app_export.dart';import 'package:home_services/widgets/custom_elevated_button.dart';import 'package:home_services/widgets/custom_radio_button.dart';import 'package:home_services/presentation/select_date_bottomsheet/select_date_bottomsheet.dart';
// ignore_for_file: must_be_immutable
class AddressSelectedBottomsheet extends StatelessWidget {AddressSelectedBottomsheet({Key? key}) : super(key: key);

String radioGroup = "";

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 36.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.customBorderTL20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 7.h), child: Text("Select address", style: theme.textTheme.titleMedium)), SizedBox(height: 14.v), GestureDetector(onTap: () {onTapAddNewAddress(context);}, child: Padding(padding: EdgeInsets.only(left: 7.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgFramePrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("Add new address", style: CustomTextStyles.labelLargeInterPrimary))]))), SizedBox(height: 18.v), Divider(indent: 7.h, endIndent: 7.h), SizedBox(height: 21.v), Container(margin: EdgeInsets.only(right: 7.h), padding: EdgeInsets.symmetric(horizontal: 7.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomRadioButton(text: "Home", value: "Home", groupValue: radioGroup, textStyle: CustomTextStyles.titleSmallMedium, onChange: (value) {radioGroup = value;}), SizedBox(height: 7.v), Align(alignment: Alignment.center, child: Container(width: 277.h, margin: EdgeInsets.only(left: 26.h, right: 33.h), child: Text("Plot no.209, Kavuri Hills, Madhapur, Telangana 500033\nPh: +91234567890", maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallSFProDisplayGray60001.copyWith(height: 1.50))))])), SizedBox(height: 18.v), CustomElevatedButton(text: "Proceed", margin: EdgeInsets.only(right: 14.h), onPressed: () {onTapProceed(context);})])); } 
/// Navigates to the addNewAddressScreen when the action is triggered.
onTapAddNewAddress(BuildContext context) { Navigator.pushNamed(context, AppRoutes.addNewAddressScreen); } 

/// Shows a modal bottom sheet with [SelectDateBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapProceed(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SelectDateBottomsheet(),isScrollControlled: true); } 
 }
