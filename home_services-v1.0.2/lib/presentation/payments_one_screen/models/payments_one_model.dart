import '../../../core/app_export.dart';
import 'paytm_item_model.dart';

/// This class defines the variables used in the [payments_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentsOneModel {
  Rx<List<PaytmItemModel>> paytmItemList = Rx([
    PaytmItemModel(
        text: "Paytm UPI".obs, paytmImage: ImageConstant.imgRectangle63.obs),
    PaytmItemModel(
        text: "PhonePe".obs, paytmImage: ImageConstant.imgRectangle64.obs),
    PaytmItemModel(
        text: "GPay".obs, paytmImage: ImageConstant.imgRectangle66.obs)
  ]);
}
