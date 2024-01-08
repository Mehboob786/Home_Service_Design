import '../../../core/app_export.dart';

/// This class is used in the [facialforglow_item_widget] screen.
class FacialforglowItemModel {
  FacialforglowItemModel({
    this.facialImage,
    this.facialName,
    this.facialPrice,
    this.id,
  }) {
    facialImage = facialImage ?? Rx(ImageConstant.imgImage3);
    facialName = facialName ?? Rx("Facial for glow");
    facialPrice = facialPrice ?? Rx("₹599 onwards");
    id = id ?? Rx("");
  }

  Rx<String>? facialImage;

  Rx<String>? facialName;

  Rx<String>? facialPrice;

  Rx<String>? id;
}
