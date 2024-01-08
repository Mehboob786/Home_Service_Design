import '../controller/select_payments_two_controller.dart';
import '../models/paytmcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class PaytmcomponentItemWidget extends StatelessWidget {
  PaytmcomponentItemWidget(
    this.paytmcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaytmcomponentItemModel paytmcomponentItemModelObj;

  var controller = Get.find<SelectPaymentsTwoController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 7.v),
          padding: EdgeInsets.all(2.h),
          decoration: AppDecoration.outlinePrimary1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 6.v,
            bottom: 3.v,
          ),
          child: Obx(
            () => Text(
              paytmcomponentItemModelObj.text!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        Spacer(),
        Obx(
          () => CustomImageView(
            imagePath: paytmcomponentItemModelObj.image!.value,
            height: 30.v,
            width: 32.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
      ],
    );
  }
}
