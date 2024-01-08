import '../../../core/app_export.dart';
import 'paytmcomponent_item_model.dart';

/// This class defines the variables used in the [select_payments_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectPaymentsTwoModel {
  Rx<List<PaytmcomponentItemModel>> paytmcomponentItemList = Rx([
    PaytmcomponentItemModel(
        text: "Paytm UPI".obs, image: ImageConstant.imgRectangle63.obs),
    PaytmcomponentItemModel(
        text: "PhonePe".obs, image: ImageConstant.imgRectangle64.obs),
    PaytmcomponentItemModel(
        text: "GPay".obs, image: ImageConstant.imgRectangle66.obs)
  ]);
}
