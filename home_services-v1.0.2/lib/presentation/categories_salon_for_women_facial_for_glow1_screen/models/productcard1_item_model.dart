import '../../../core/app_export.dart';

/// This class is used in the [productcard1_item_widget] screen.
class Productcard1ItemModel {
  Productcard1ItemModel({
    this.image,
    this.title,
    this.price1,
    this.price2,
    this.iconButton,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage24);
    title = title ?? Rx("Pearl Facial");
    price1 = price1 ?? Rx("₹599");
    price2 = price2 ?? Rx("₹899");
    iconButton = iconButton ?? Rx(ImageConstant.imgFrame);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price1;

  Rx<String>? price2;

  Rx<String>? iconButton;

  Rx<String>? id;
}
