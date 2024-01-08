import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/onboarding_screen_1_real_images_screen/models/onboarding_screen_1_real_images_model.dart';

/// A controller class for the OnboardingScreen1RealImagesScreen.
///
/// This class manages the state of the OnboardingScreen1RealImagesScreen, including the
/// current onboardingScreen1RealImagesModelObj
class OnboardingScreen1RealImagesController extends GetxController {
  Rx<OnboardingScreen1RealImagesModel> onboardingScreen1RealImagesModelObj =
      OnboardingScreen1RealImagesModel().obs;
}
