import '../previous_bookings_detail_page_screen/widgets/diamondfaciallist_item_widget.dart';
import 'controller/previous_bookings_detail_page_controller.dart';
import 'models/diamondfaciallist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class PreviousBookingsDetailPageScreen
    extends GetWidget<PreviousBookingsDetailPageController> {
  const PreviousBookingsDetailPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_19th".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_nov_saturday".tr,
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildDiamondFacialList(),
                  SizedBox(height: 24.v),
                  _buildBillingDetailsColumn(),
                  SizedBox(height: 24.v),
                  _buildHomeColumn(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgClock,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 5.v,
          bottom: 5.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_previous_booking".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDiamondFacialList() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: controller.previousBookingsDetailPageModelObj.value
            .diamondfaciallistItemList.value.length,
        itemBuilder: (context, index) {
          DiamondfaciallistItemModel model = controller
              .previousBookingsDetailPageModelObj
              .value
              .diamondfaciallistItemList
              .value[index];
          return DiamondfaciallistItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBillingDetailsColumn() {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_billing_details".tr,
                style: CustomTextStyles.titleMediumSFProDisplay,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              itemDiscountText: "lbl_item_total".tr,
              priceText: "lbl_699".tr,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              itemDiscountText: "lbl_item_discount".tr,
              priceText: "lbl_50".tr,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              itemDiscountText: "lbl_service_fee".tr,
              priceText: "lbl_502".tr,
            ),
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              itemDiscountText: "lbl_grand_total".tr,
              priceText: "lbl_749".tr,
            ),
          ),
          SizedBox(height: 15.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_payment_mode2".tr,
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "lbl_paytm_upi".tr,
                    style: CustomTextStyles.titleSmallMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeColumn() {
    return Container(
      width: 343.h,
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlack900,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 3.v,
                ),
                child: Text(
                  "lbl_home".tr,
                  style: CustomTextStyles.titleSmallMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Container(
            width: 230.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 50.h,
            ),
            child: Text(
              "msg_plot_no_209_kavuri2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallSFProDisplayGray60001.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlack90020x20,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 4.v,
                ),
                child: Text(
                  "msg_sat_apr_09_07_30".tr,
                  style: CustomTextStyles.bodySmallSFProDisplayGray60001,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildItemDiscountRow({
    required String itemDiscountText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          itemDiscountText,
          style: CustomTextStyles.bodyMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.bodyMediumGreen400.copyWith(
            color: appTheme.green400,
          ),
        ),
      ],
    );
  }
}
