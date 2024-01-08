import '../controller/selected_summary_controller.dart';
import '../models/stack_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class StackItemWidget extends StatelessWidget {
  StackItemWidget(
    this.stackItemModelObj, {
    Key? key,
    this.onTapProceedButtonText,
  }) : super(
          key: key,
        );

  StackItemModel stackItemModelObj;

  var controller = Get.find<SelectedSummaryController>();

  VoidCallback? onTapProceedButtonText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 180.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 180.v,
              width: 343.h,
              alignment: Alignment.center,
            ),
            CustomElevatedButton(
              width: 343.h,
              text: "lbl_view_summary".tr,
              margin: EdgeInsets.only(top: 11.v),
              onPressed: () {
                onTapProceedButtonText!.call();
              },
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }
}
