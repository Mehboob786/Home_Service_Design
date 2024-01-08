import '../controller/facial_for_glow_diamond_facial_details1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FacialForGlowDiamondFacialDetails1Screen.
///
/// This class ensures that the FacialForGlowDiamondFacialDetails1Controller is created when the
/// FacialForGlowDiamondFacialDetails1Screen is first loaded.
class FacialForGlowDiamondFacialDetails1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FacialForGlowDiamondFacialDetails1Controller());
  }
}
