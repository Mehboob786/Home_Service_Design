import '../../../core/app_export.dart';

/// This class is used in the [diamondfacialcomponent_item_widget] screen.
class DiamondfacialcomponentItemModel {
  DiamondfacialcomponentItemModel({
    this.image,
    this.title,
    this.duration,
    this.description,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage23100x100);
    title = title ?? Rx("Diamond Facial");
    duration = duration ?? Rx("2 hrs");
    description = description ?? Rx("Includes dummy info");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? duration;

  Rx<String>? description;

  Rx<String>? id;
}
