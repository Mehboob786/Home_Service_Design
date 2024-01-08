import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class ItemtotalItemWidget extends StatelessWidget {
  const ItemtotalItemWidget({Key? key})
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
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "Item Total",
          style: TextStyle(
            color: appTheme.gray900,
            fontSize: 14.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: Colors.transparent,
        onSelected: (value) {},
      ),
    );
  }
}
