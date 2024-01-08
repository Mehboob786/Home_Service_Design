import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/onboarding_screen_3_real_images_screen/models/onboarding_screen_3_real_images_model.dart';

/// A controller class for the OnboardingScreen3RealImagesScreen.
///
/// This class manages the state of the OnboardingScreen3RealImagesScreen, including the
/// current onboardingScreen3RealImagesModelObj
class OnboardingScreen3RealImagesController extends GetxController {
  Rx<OnboardingScreen3RealImagesModel> onboardingScreen3RealImagesModelObj =
      OnboardingScreen3RealImagesModel().obs;
}
