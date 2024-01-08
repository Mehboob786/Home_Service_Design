import '../controller/facial_for_glow_diamond_facial_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FacialForGlowDiamondFacialDetailsScreen.
///
/// This class ensures that the FacialForGlowDiamondFacialDetailsController is created when the
/// FacialForGlowDiamondFacialDetailsScreen is first loaded.
class FacialForGlowDiamondFacialDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FacialForGlowDiamondFacialDetailsController());
  }
}
