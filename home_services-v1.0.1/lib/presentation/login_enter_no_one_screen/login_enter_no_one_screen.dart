import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_phone_number.dart';

class LoginEnterNoOneScreen extends StatelessWidget {
  LoginEnterNoOneScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(
                  height: 411.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildLogoAndBackground(context),
                      CustomPhoneNumber(
                        country: selectedCountry,
                        controller: phoneNumberController,
                        onTap: (Country value) {
                          selectedCountry = value;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                Text(
                  "An OTP will be sent on given phone number for verification.Standard message and data rates apply.",
                  style: CustomTextStyles.bodySmallGray60001,
                ),
                SizedBox(height: 39.v),
                CustomElevatedButton(
                  height: 55.v,
                  text: "Login/Sign up",
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumSFProDisplayGray60002,
                  onPressed: () {

                  },
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoAndBackground(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 44.h,
          vertical: 10.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgLogoAndBg,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 86.v),
            Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 27.h,
                vertical: 65.v,
              ),
              decoration: AppDecoration.fillBlue5002.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder143,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 33.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 56.v,
                    width: 90.h,
                  ),
                  SizedBox(height: 24.v),
                  Text(
                    "Home Services",
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
