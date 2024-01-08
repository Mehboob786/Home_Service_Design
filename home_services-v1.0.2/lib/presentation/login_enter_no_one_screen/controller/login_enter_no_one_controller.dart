import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/login_enter_no_one_screen/models/login_enter_no_one_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginEnterNoOneScreen.
///
/// This class manages the state of the LoginEnterNoOneScreen, including the
/// current loginEnterNoOneModelObj
class LoginEnterNoOneController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<LoginEnterNoOneModel> loginEnterNoOneModelObj = LoginEnterNoOneModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
