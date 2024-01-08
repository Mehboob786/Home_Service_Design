import '../controller/onboarding_screen_1_real_images_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen1RealImagesScreen.
///
/// This class ensures that the OnboardingScreen1RealImagesController is created when the
/// OnboardingScreen1RealImagesScreen is first loaded.
class OnboardingScreen1RealImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreen1RealImagesController());
  }
}
