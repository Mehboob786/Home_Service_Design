import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/onboarding_screen_2_real_images_screen/models/onboarding_screen_2_real_images_model.dart';

/// A controller class for the OnboardingScreen2RealImagesScreen.
///
/// This class manages the state of the OnboardingScreen2RealImagesScreen, including the
/// current onboardingScreen2RealImagesModelObj
class OnboardingScreen2RealImagesController extends GetxController {
  Rx<OnboardingScreen2RealImagesModel> onboardingScreen2RealImagesModelObj =
      OnboardingScreen2RealImagesModel().obs;
}
