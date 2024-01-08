import 'controller/feedback_rated_controller.dart';
import 'models/feedback_rated_model.dart';
import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

class FeedbackRatedPage extends StatelessWidget {
  FeedbackRatedPage({Key? key})
      : super(
          key: key,
        );

  FeedbackRatedController controller =
      Get.put(FeedbackRatedController(FeedbackRatedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                _buildFeedbackForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Text(
            "lbl_4_good".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 99.v),
          CustomTextFormField(
            controller: controller.experienceController,
            hintText: "msg_it_was_good_experience".tr,
            textInputAction: TextInputAction.done,
            maxLines: 7,
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            text: "lbl_submit_feedback".tr,
            buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary,
          ),
        ],
      ),
    );
  }
}
