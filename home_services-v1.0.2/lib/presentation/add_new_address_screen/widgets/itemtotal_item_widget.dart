import '../models/itemtotal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class ItemtotalItemWidget extends StatelessWidget {
  ItemtotalItemWidget(
    this.itemtotalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemtotalItemModel itemtotalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            itemtotalItemModelObj.itemTotal!.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (itemtotalItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: Colors.transparent,
          onSelected: (value) {
            itemtotalItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
