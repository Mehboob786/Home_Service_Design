import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class Timeone6ItemWidget extends StatelessWidget {
  const Timeone6ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
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
          "09:30 AM",
          style: TextStyle(
            color: appTheme.gray900,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.blue5001,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray300,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
