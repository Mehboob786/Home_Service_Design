import '../controller/bookings_detail_page_one_controller.dart';
import '../models/diamondfacialcomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';

// ignore: must_be_immutable
class DiamondfacialcomponentlistItemWidget extends StatelessWidget {
  DiamondfacialcomponentlistItemWidget(
    this.diamondfacialcomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiamondfacialcomponentlistItemModel diamondfacialcomponentlistItemModelObj;

  var controller = Get.find<BookingsDetailPageOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: diamondfacialcomponentlistItemModelObj.image!.value,
              height: 100.adaptSize,
              width: 100.adaptSize,
              radius: BorderRadius.circular(
                14.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 12.v,
              bottom: 25.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    diamondfacialcomponentlistItemModelObj.title!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 8.v),
                Row(
                  children: [
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                      decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Obx(
                        () => Text(
                          diamondfacialcomponentlistItemModelObj
                              .duration!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(
                        top: 5.v,
                        bottom: 7.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray60001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Obx(
                        () => Text(
                          diamondfacialcomponentlistItemModelObj
                              .description!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
