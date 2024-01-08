import '../controller/onboarding_screen_2_real_images_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingScreen2RealImagesOneScreen.
///
/// This class ensures that the OnboardingScreen2RealImagesOneController is created when the
/// OnboardingScreen2RealImagesOneScreen is first loaded.
class OnboardingScreen2RealImagesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingScreen2RealImagesOneController());
  }
}
