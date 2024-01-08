import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/edit_update_address_screen/models/edit_update_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditUpdateAddressScreen.
///
/// This class manages the state of the EditUpdateAddressScreen, including the
/// current editUpdateAddressModelObj
class EditUpdateAddressController extends GetxController {
  TextEditingController landmarkOptionalController = TextEditingController();

  Rx<EditUpdateAddressModel> editUpdateAddressModelObj =
      EditUpdateAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    landmarkOptionalController.dispose();
  }
}
