import '../../../core/app_export.dart';

/// This class is used in the [paytm_item_widget] screen.
class PaytmItemModel {
  PaytmItemModel({
    this.text,
    this.paytmImage,
    this.id,
  }) {
    text = text ?? Rx("Paytm UPI");
    paytmImage = paytmImage ?? Rx(ImageConstant.imgRectangle63);
    id = id ?? Rx("");
  }

  Rx<String>? text;

  Rx<String>? paytmImage;

  Rx<String>? id;
}
