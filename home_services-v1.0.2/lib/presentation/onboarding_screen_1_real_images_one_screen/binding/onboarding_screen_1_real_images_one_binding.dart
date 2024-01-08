import '../controller/onboarding_screen_1_real_images_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen1RealImagesOneScreen.
///
/// This class ensures that the OnboardingScreen1RealImagesOneController is created when the
/// OnboardingScreen1RealImagesOneScreen is first loaded.
class OnboardingScreen1RealImagesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreen1RealImagesOneController());
  }
}
