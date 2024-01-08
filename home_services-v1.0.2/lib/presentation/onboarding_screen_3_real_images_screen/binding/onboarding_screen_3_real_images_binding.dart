import '../controller/onboarding_screen_3_real_images_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen3RealImagesScreen.
///
/// This class ensures that the OnboardingScreen3RealImagesController is created when the
/// OnboardingScreen3RealImagesScreen is first loaded.
class OnboardingScreen3RealImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreen3RealImagesController());
  }
}
