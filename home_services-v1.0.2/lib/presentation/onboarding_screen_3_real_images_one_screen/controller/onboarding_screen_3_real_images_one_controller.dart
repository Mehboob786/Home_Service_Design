import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/onboarding_screen_3_real_images_one_screen/models/onboarding_screen_3_real_images_one_model.dart';

/// A controller class for the OnboardingScreen3RealImagesOneScreen.
///
/// This class manages the state of the OnboardingScreen3RealImagesOneScreen, including the
/// current onboardingScreen3RealImagesOneModelObj
class OnboardingScreen3RealImagesOneController extends GetxController {
  Rx<OnboardingScreen3RealImagesOneModel>
      onboardingScreen3RealImagesOneModelObj =
      OnboardingScreen3RealImagesOneModel().obs;
}
