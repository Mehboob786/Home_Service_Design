import '../selected_summary_screen/widgets/stack_item_widget.dart';
import '../selected_summary_screen/widgets/widget_item_widget.dart';
import 'controller/selected_summary_controller.dart';
import 'models/stack_item_model.dart';
import 'models/widget_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:home_services/widgets/app_bar/custom_app_bar.dart';
import 'package:home_services/widgets/custom_checkbox_button.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SelectedSummaryScreen extends GetWidget<SelectedSummaryController> {
  const SelectedSummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildArrowLeftStack(),
                  SizedBox(height: 32.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.h, right: 15.h, bottom: 5.v),
                              child: Column(children: [
                                _buildSelectedServicesColumn(),
                                SizedBox(height: 25.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("msg_related_services".tr,
                                        style:
                                            CustomTextStyles.titleLargeInter)),
                                SizedBox(height: 19.v),
                                _buildProceedButtonTextColumn(),
                                SizedBox(height: 30.v),
                                _buildAddColumn()
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftStack() {
    return SizedBox(
        height: 282.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage22,
              height: 282.v,
              width: 375.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgFrameGray6000124x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center),
          CustomAppBar(
              height: 69.v,
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingIconbuttonTwo(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 16.h, right: 314.h),
                  onTap: () {
                    onTapArrowLeft();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildSelectedServicesColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text("lbl_salon_for_women".tr,
              style: CustomTextStyles.headlineSmallInter)),
      SizedBox(height: 8.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgSignalGray60001,
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
            Padding(
                padding: EdgeInsets.only(left: 4.h),
                child:
                    Text("lbl_4_8_23k".tr, style: theme.textTheme.labelLarge))
          ])),
      SizedBox(height: 6.v),
      Obx(() => CustomCheckboxButton(
          text: "msg_354_jobs_completed".tr,
          value: controller.jobscompleted.value,
          onChange: (value) {
            controller.jobscompleted.value = value;
          })),
      SizedBox(height: 18.v),
      Container(
          width: 343.h,
          margin: EdgeInsets.only(left: 2.h),
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v),
          decoration: AppDecoration.fillBlue
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("msg_selected_services".tr,
                    style: CustomTextStyles.titleMediumBold_2),
                SizedBox(height: 16.v),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage60x60,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(10.h)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16.h, top: 4.v, bottom: 10.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_diamond_facial".tr,
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 5.v),
                            Text("lbl_699".tr,
                                style: CustomTextStyles.titleMediumPrimary)
                          ]))
                ]),
                SizedBox(height: 16.v),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      height: 4.adaptSize,
                      width: 4.adaptSize,
                      margin: EdgeInsets.only(top: 5.v, bottom: 7.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray60001,
                          borderRadius: BorderRadius.circular(2.h))),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text("lbl_45_mins".tr,
                          style: theme.textTheme.bodyMedium))
                ]),
                SizedBox(height: 5.v),
                Padding(
                    padding: EdgeInsets.only(right: 65.h),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              margin: EdgeInsets.only(top: 4.v, bottom: 8.v),
                              decoration: BoxDecoration(
                                  color: appTheme.gray60001,
                                  borderRadius: BorderRadius.circular(2.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("msg_for_all_skin_types2".tr,
                                  style: theme.textTheme.bodyMedium))
                        ])),
                SizedBox(height: 4.v),
                Padding(
                    padding: EdgeInsets.only(right: 22.h),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              margin: EdgeInsets.only(top: 4.v, bottom: 8.v),
                              decoration: BoxDecoration(
                                  color: appTheme.gray60001,
                                  borderRadius: BorderRadius.circular(2.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("msg_6_step_process".tr,
                                  style: theme.textTheme.bodyMedium))
                        ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildProceedButtonTextColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          height: 180.v,
          width: 343.h,
          margin: EdgeInsets.only(left: 2.h),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Obx(() => CarouselSlider.builder(
                options: CarouselOptions(
                    height: 180.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      controller.sliderIndex.value = index;
                    }),
                itemCount: controller
                    .selectedSummaryModelObj.value.stackItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  StackItemModel model = controller
                      .selectedSummaryModelObj.value.stackItemList.value[index];
                  return StackItemWidget(model, onTapProceedButtonText: () {
                    onTapProceedButtonText();
                  });
                })),
            Align(
                alignment: Alignment.bottomCenter,
                child: Obx(() => Container(
                    height: 4.v,
                    margin: EdgeInsets.only(bottom: 10.v),
                    child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex.value,
                        count: controller.selectedSummaryModelObj.value
                            .stackItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            spacing: 6,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: theme.colorScheme.onPrimary,
                            dotHeight: 4.v,
                            dotWidth: 32.h)))))
          ])),
      SizedBox(height: 14.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("lbl_facial_name_2".tr,
                      style: CustomTextStyles.titleMediumBold_2),
                  SizedBox(height: 8.v),
                  _buildSignalRow(
                      counter1: "lbl_4_8_23k".tr, counter2: "lbl_4_8_23k".tr),
                  SizedBox(height: 6.v),
                  _buildPriceRow(
                      priceText: "lbl_499".tr, oldPriceText: "lbl_599".tr),
                  SizedBox(height: 15.v),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        margin: EdgeInsets.only(top: 5.v, bottom: 7.v),
                        decoration: BoxDecoration(
                            color: appTheme.gray60001,
                            borderRadius: BorderRadius.circular(2.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_45_mins".tr,
                            style: theme.textTheme.bodyMedium))
                  ])
                ]),
                CustomElevatedButton(
                    height: 29.v,
                    width: 75.h,
                    text: "lbl_add".tr,
                    margin: EdgeInsets.only(bottom: 70.v),
                    leftIcon: Container(
                        margin: EdgeInsets.only(right: 4.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 12.adaptSize,
                            width: 12.adaptSize)),
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallSFProDisplayPrimary)
              ])),
      SizedBox(height: 9.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h, right: 97.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                margin: EdgeInsets.only(top: 4.v, bottom: 8.v),
                decoration: BoxDecoration(
                    color: appTheme.gray60001,
                    borderRadius: BorderRadius.circular(2.h))),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text("msg_for_all_skin_types2".tr,
                    style: theme.textTheme.bodyMedium))
          ])),
      SizedBox(height: 8.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h, right: 54.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                margin: EdgeInsets.only(top: 4.v, bottom: 8.v),
                decoration: BoxDecoration(
                    color: appTheme.gray60001,
                    borderRadius: BorderRadius.circular(2.h))),
            Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text("msg_6_step_process".tr,
                    style: theme.textTheme.bodyMedium))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildAddColumn() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          height: 180.v,
          width: 343.h,
          margin: EdgeInsets.only(left: 2.h),
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Obx(() => CarouselSlider.builder(
                options: CarouselOptions(
                    height: 180.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      controller.sliderIndex1.value = index;
                    }),
                itemCount: controller
                    .selectedSummaryModelObj.value.widgetItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  WidgetItemModel model = controller.selectedSummaryModelObj
                      .value.widgetItemList.value[index];
                  return WidgetItemWidget(model);
                })),
            Align(
                alignment: Alignment.bottomCenter,
                child: Obx(() => Container(
                    height: 4.v,
                    margin: EdgeInsets.only(bottom: 10.v),
                    child: AnimatedSmoothIndicator(
                        activeIndex: controller.sliderIndex1.value,
                        count: controller.selectedSummaryModelObj.value
                            .widgetItemList.value.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            spacing: 6,
                            activeDotColor: theme.colorScheme.primary,
                            dotColor: theme.colorScheme.onPrimary,
                            dotHeight: 4.v,
                            dotWidth: 32.h)))))
          ])),
      SizedBox(height: 14.v),
      Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("lbl_facial_name_3".tr,
                      style: CustomTextStyles.titleMediumBold_2),
                  SizedBox(height: 8.v),
                  _buildSignalRow(
                      counter1: "lbl_4_8_23k".tr, counter2: "lbl_4_8_23k".tr),
                  SizedBox(height: 6.v),
                  _buildPriceRow(
                      priceText: "lbl_499".tr, oldPriceText: "lbl_599".tr),
                  SizedBox(height: 15.v),
                  Row(children: [
                    Container(
                        height: 4.adaptSize,
                        width: 4.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 6.v),
                        decoration: BoxDecoration(
                            color: appTheme.gray60001,
                            borderRadius: BorderRadius.circular(2.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_45_mins".tr,
                            style: theme.textTheme.bodyMedium))
                  ])
                ]),
                CustomElevatedButton(
                    height: 29.v,
                    width: 75.h,
                    text: "lbl_add".tr,
                    margin: EdgeInsets.only(bottom: 70.v),
                    leftIcon: Container(
                        margin: EdgeInsets.only(right: 4.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 12.adaptSize,
                            width: 12.adaptSize)),
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle:
                        CustomTextStyles.titleSmallSFProDisplayPrimary)
              ])),
      SizedBox(height: 9.v),
      Padding(
          padding: EdgeInsets.only(left: 14.h),
          child: Text("msg_for_all_skin_types2".tr,
              style: theme.textTheme.bodyMedium)),
      SizedBox(height: 8.v),
      Padding(
          padding: EdgeInsets.only(left: 14.h),
          child:
              Text("msg_6_step_process".tr, style: theme.textTheme.bodyMedium))
    ]);
  }

  /// Common widget
  Widget _buildSignalRow({
    required String counter1,
    required String counter2,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(top: 1.v, bottom: 3.v)),
      Container(
          height: 15.v,
          width: 51.h,
          margin: EdgeInsets.only(left: 4.h),
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Text(counter1,
                    style: CustomTextStyles.labelLargeInterPrimaryContainer
                        .copyWith(color: theme.colorScheme.primaryContainer))),
            Align(
                alignment: Alignment.center,
                child: Text(counter2,
                    style: CustomTextStyles.labelLargeInter
                        .copyWith(color: appTheme.gray900)))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildPriceRow({
    required String priceText,
    required String oldPriceText,
  }) {
    return Row(children: [
      Text(priceText,
          style: CustomTextStyles.titleSmallPrimary_1
              .copyWith(color: theme.colorScheme.primary)),
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(oldPriceText,
              style: theme.textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: appTheme.gray60001)))
    ]);
  }

  /// Navigates to the summaryScreen when the action is triggered.
  onTapProceedButtonText() {
    Get.toNamed(AppRoutes.summaryScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
