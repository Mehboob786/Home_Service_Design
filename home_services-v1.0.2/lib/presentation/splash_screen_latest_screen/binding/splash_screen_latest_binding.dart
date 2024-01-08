import '../controller/splash_screen_latest_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashScreenLatestScreen.
///
/// This class ensures that the SplashScreenLatestController is created when the
/// SplashScreenLatestScreen is first loaded.
class SplashScreenLatestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenLatestController());
  }
}
