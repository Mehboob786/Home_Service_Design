import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    mobileNumberController.dispose();
  }
}
