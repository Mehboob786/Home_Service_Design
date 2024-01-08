import '../models/timeone2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class Timeone2ItemWidget extends StatelessWidget {
  Timeone2ItemWidget(
    this.timeone2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Timeone2ItemModel timeone2ItemModelObj;

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
            timeone2ItemModelObj.timeOne!.value,
            style: TextStyle(
              color: appTheme.gray900,
              fontSize: 14.fSize,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (timeone2ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.blue5001,
          shape: (timeone2ItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
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
            timeone2ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
