import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {
  TextEditingController houseFlatNumberController = TextEditingController();

  TextEditingController landmarkOptionalController = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    houseFlatNumberController.dispose();
    landmarkOptionalController.dispose();
  }
}
