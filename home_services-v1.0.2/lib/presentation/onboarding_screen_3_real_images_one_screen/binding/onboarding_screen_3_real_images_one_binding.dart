import '../controller/onboarding_screen_3_real_images_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen3RealImagesOneScreen.
///
/// This class ensures that the OnboardingScreen3RealImagesOneController is created when the
/// OnboardingScreen3RealImagesOneScreen is first loaded.
class OnboardingScreen3RealImagesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreen3RealImagesOneController());
  }
}
