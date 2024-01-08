import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/facial_for_glow_diamond_facial_details_screen/models/facial_for_glow_diamond_facial_details_model.dart';

/// A controller class for the FacialForGlowDiamondFacialDetailsScreen.
///
/// This class manages the state of the FacialForGlowDiamondFacialDetailsScreen, including the
/// current facialForGlowDiamondFacialDetailsModelObj
class FacialForGlowDiamondFacialDetailsController extends GetxController {
  Rx<FacialForGlowDiamondFacialDetailsModel>
      facialForGlowDiamondFacialDetailsModelObj =
      FacialForGlowDiamondFacialDetailsModel().obs;
}
