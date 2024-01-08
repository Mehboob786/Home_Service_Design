import 'package:home_services/core/app_export.dart';
import 'package:home_services/presentation/service_completed_screen/models/service_completed_model.dart';

/// A controller class for the ServiceCompletedScreen.
///
/// This class manages the state of the ServiceCompletedScreen, including the
/// current serviceCompletedModelObj
class ServiceCompletedController extends GetxController {
  Rx<ServiceCompletedModel> serviceCompletedModelObj =
      ServiceCompletedModel().obs;
}
