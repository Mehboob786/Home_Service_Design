import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/splash_screen_latest_screen/models/splash_screen_latest_model.dart';

/// A controller class for the SplashScreenLatestScreen.
///
/// This class manages the state of the SplashScreenLatestScreen, including the
/// current splashScreenLatestModelObj
class SplashScreenLatestController extends GetxController {
  Rx<SplashScreenLatestModel> splashScreenLatestModelObj =
      SplashScreenLatestModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.onboardingScreen3RealImagesOneScreen,
      );
    });
  }
}
