import 'package:flutter/material.dart';
import 'package:home_services/core/app_export.dart';
import 'package:home_services/widgets/custom_elevated_button.dart';
import 'package:home_services/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FeedbackRatedPage extends StatefulWidget {
  const FeedbackRatedPage({Key? key})
      : super(
          key: key,
        );

  @override
  FeedbackRatedPageState createState() => FeedbackRatedPageState();
}

class FeedbackRatedPageState extends State<FeedbackRatedPage>
    with AutomaticKeepAliveClientMixin<FeedbackRatedPage> {
  TextEditingController experienceController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                _buildFeedbackForm(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Text(
            "4 - Good",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 99.v),
          CustomTextFormField(
            controller: experienceController,
            hintText: "It was good experience, thanks to mHome Services.",
            textInputAction: TextInputAction.done,
            maxLines: 7,
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            text: "Submit Feedback",
            buttonTextStyle: CustomTextStyles.titleMediumSFProDisplayOnPrimary,
          ),
        ],
      ),
    );
  }
}
