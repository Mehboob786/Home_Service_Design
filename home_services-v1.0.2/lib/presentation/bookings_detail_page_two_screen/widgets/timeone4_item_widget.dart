import '../models/timeone4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class Timeone4ItemWidget extends StatelessWidget {
  Timeone4ItemWidget(
    this.timeone4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Timeone4ItemModel timeone4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 15.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            timeone4ItemModelObj.timeOne!.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (timeone4ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.gray900.withOpacity(0.2),
          shape: (timeone4ItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray300,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray300,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
          onSelected: (value) {
            timeone4ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
