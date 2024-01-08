import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/onboarding_screen_2_real_images_one_screen/models/onboarding_screen_2_real_images_one_model.dart';

/// A controller class for the OnboardingScreen2RealImagesOneScreen.
///
/// This class manages the state of the OnboardingScreen2RealImagesOneScreen, including the
/// current onboardingScreen2RealImagesOneModelObj
class OnboardingScreen2RealImagesOneController extends GetxController {
  Rx<OnboardingScreen2RealImagesOneModel>
      onboardingScreen2RealImagesOneModelObj =
      OnboardingScreen2RealImagesOneModel().obs;
}
