import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/login_enter_no_screen/models/login_enter_no_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginEnterNoScreen.
///
/// This class manages the state of the LoginEnterNoScreen, including the
/// current loginEnterNoModelObj
class LoginEnterNoController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<LoginEnterNoModel> loginEnterNoModelObj = LoginEnterNoModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
