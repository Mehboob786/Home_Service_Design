import '../previous_bookings_detail_page_screen/widgets/diamondfaciallist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:home_services/widgets/app_bar/appbar_title.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';

class PreviousBookingsDetailPageScreen extends StatelessWidget {
  const PreviousBookingsDetailPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
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
                      "19th",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Nov, Saturday",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildDiamondFacialList(context),
                  SizedBox(height: 24.v),
                  _buildBillingDetailsColumn(context),
                  SizedBox(height: 24.v),
                  _buildHomeColumn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
        text: "Previous Booking",
      ),
    );
  }

  /// Section Widget
  Widget _buildDiamondFacialList(BuildContext context) {
    return ListView.separated(
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
      itemCount: 2,
      itemBuilder: (context, index) {
        return DiamondfaciallistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildBillingDetailsColumn(BuildContext context) {
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
                "Billing Details",
                style: CustomTextStyles.titleMediumSFProDisplay,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              context,
              itemDiscountText: "Item Total",
              priceText: "₹699",
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              context,
              itemDiscountText: "Item Discount",
              priceText: "-₹50",
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              context,
              itemDiscountText: "Service Fee",
              priceText: "₹50",
            ),
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildItemDiscountRow(
              context,
              itemDiscountText: "Grand Total",
              priceText: "₹749",
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
                    "Payment mode",
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "Paytm UPI",
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
  Widget _buildHomeColumn(BuildContext context) {
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
                  "Home",
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
              "Plot no.209, Kavuri Hills, Madhapur, Telangana 500033, Ph: +91234567890",
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
                  "Sat, Apr 09 - 07:30 PM",
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
  Widget _buildItemDiscountRow(
    BuildContext context, {
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
