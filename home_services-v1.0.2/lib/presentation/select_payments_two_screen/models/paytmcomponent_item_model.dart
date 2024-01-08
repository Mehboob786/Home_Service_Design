import '../../../core/app_export.dart';

/// This class is used in the [paytmcomponent_item_widget] screen.
class PaytmcomponentItemModel {
  PaytmcomponentItemModel({
    this.text,
    this.image,
    this.id,
  }) {
    text = text ?? Rx("Paytm UPI");
    image = image ?? Rx(ImageConstant.imgRectangle63);
    id = id ?? Rx("");
  }

  Rx<String>? text;

  Rx<String>? image;

  Rx<String>? id;
}
