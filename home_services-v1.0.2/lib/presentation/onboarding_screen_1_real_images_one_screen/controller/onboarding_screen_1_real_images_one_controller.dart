import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/onboarding_screen_1_real_images_one_screen/models/onboarding_screen_1_real_images_one_model.dart';

/// A controller class for the OnboardingScreen1RealImagesOneScreen.
///
/// This class manages the state of the OnboardingScreen1RealImagesOneScreen, including the
/// current onboardingScreen1RealImagesOneModelObj
class OnboardingScreen1RealImagesOneController extends GetxController {
  Rx<OnboardingScreen1RealImagesOneModel>
      onboardingScreen1RealImagesOneModelObj =
      OnboardingScreen1RealImagesOneModel().obs;
}
