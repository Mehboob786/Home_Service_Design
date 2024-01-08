import '../controller/onboarding_screen_2_real_images_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen2RealImagesScreen.
///
/// This class ensures that the OnboardingScreen2RealImagesController is created when the
/// OnboardingScreen2RealImagesScreen is first loaded.
class OnboardingScreen2RealImagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreen2RealImagesController());
  }
}
