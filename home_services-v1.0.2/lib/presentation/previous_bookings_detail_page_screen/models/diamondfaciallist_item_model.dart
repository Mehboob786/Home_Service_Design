import '../../../core/app_export.dart';

/// This class is used in the [diamondfaciallist_item_widget] screen.
class DiamondfaciallistItemModel {
  DiamondfaciallistItemModel({
    this.image,
    this.title,
    this.text1,
    this.text2,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage47);
    title = title ?? Rx("AC Service");
    text1 = text1 ?? Rx("1 hrs");
    text2 = text2 ?? Rx("Includes lorem ipsum");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? id;
}
