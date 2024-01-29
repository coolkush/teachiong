import 'bloc/tutors_one_bloc.dart';
import 'models/tutors_one_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';

class TutorsOneScreen extends StatelessWidget {
  const TutorsOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorsOneBloc>(
        create: (context) =>
            TutorsOneBloc(TutorsOneState(tutorsOneModelObj: TutorsOneModel()))
              ..add(TutorsOneInitialEvent()),
        child: TutorsOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorsOneBloc, TutorsOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(children: [
                    _buildStart(context),
                    SizedBox(height: 13.v),
                    _buildLine(context),
                    SizedBox(height: 13.v),
                    _buildYourGovernessWill(context),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_activity".tr));
  }

  /// Section Widget
  Widget _buildStart(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_00_00_00".tr, style: theme.textTheme.headlineSmall),
              SizedBox(height: 5.v),
              CustomElevatedButton(
                  height: 32.v,
                  width: 101.h,
                  text: "lbl_start".tr,
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumOnPrimaryContainer_1),
              SizedBox(height: 4.v)
            ]));
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.gradientGrayToRed
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 114.v,
              child: VerticalDivider(
                  width: 4.h, thickness: 4.v, indent: 6.h, endIndent: 79.h)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 7.h, top: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_balance_beam".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 5.v),
                        SizedBox(
                            width: 296.h,
                            child: Text("msg_try_more_lines_at".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodySmallOnError
                                    .copyWith(height: 1.42))),
                        SizedBox(height: 3.v),
                        Text("lbl_submission_date".tr,
                            style: theme.textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCalendarLine1,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(bottom: 3.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("lbl_july_16_2022".tr,
                                  style: theme.textTheme.labelLarge))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildYourGovernessWill(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 93.v),
        decoration: AppDecoration.outlineBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_your_governess_will".tr,
                  style: CustomTextStyles.titleSmallGray50002),
              SizedBox(height: 10.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: 66.adaptSize,
                  width: 66.adaptSize)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
