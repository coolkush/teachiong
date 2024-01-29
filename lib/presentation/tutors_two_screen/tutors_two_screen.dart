import '../tutors_two_screen/widgets/userprofile_item_widget.dart';
import 'bloc/tutors_two_bloc.dart';
import 'models/tutors_two_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class TutorsTwoScreen extends StatelessWidget {
  const TutorsTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorsTwoBloc>(
        create: (context) =>
            TutorsTwoBloc(TutorsTwoState(tutorsTwoModelObj: TutorsTwoModel()))
              ..add(TutorsTwoInitialEvent()),
        child: TutorsTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(children: [
                  _buildPhysicalActivity(context),
                  SizedBox(height: 26.v),
                  _buildFiftySeven(context),
                  SizedBox(height: 5.v)
                ]))));
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
        title: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "lbl_physical_a".tr,
                  style: CustomTextStyles.titleMediumBold_1),
              TextSpan(
                  text: "lbl_ctivity".tr,
                  style: CustomTextStyles.titleMediumBold_1)
            ]),
            textAlign: TextAlign.left));
  }

  /// Section Widget
  Widget _buildPhysicalActivity(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: AppDecoration.gradientGrayToBlue5001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    width: 88.h,
                    child: Text("msg_physical_activity".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargePoppinsPrimary
                            .copyWith(height: 1.50))),
                SizedBox(height: 6.v),
                SizedBox(
                    width: 154.h,
                    child: Text("msg_lorem_ipsum_dolor".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelMedium!
                            .copyWith(height: 1.64)))
              ]),
              Container(
                  height: 125.adaptSize,
                  width: 125.adaptSize,
                  margin: EdgeInsets.only(top: 5.v, bottom: 14.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                                left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                            strokeWidth: 1.h,
                            gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1),
                                colors: [appTheme.cyan100, appTheme.blue100]),
                            corners: Corners(
                                topLeft: Radius.circular(62),
                                topRight: Radius.circular(62),
                                bottomLeft: Radius.circular(62),
                                bottomRight: Radius.circular(62)),
                            child: Container(
                                padding: EdgeInsets.all(11.h),
                                decoration: AppDecoration.gradientBlueToBlue
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder62),
                                child: SizedBox(
                                    height: 101.adaptSize,
                                    width: 101.adaptSize,
                                    child: CircularProgressIndicator(
                                        value: 0.5,
                                        backgroundColor: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1),
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1),
                                        strokeWidth: 1.h))))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 37.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("lbl_80".tr,
                                      style: CustomTextStyles
                                          .titleLargePoppinsBlack90001),
                                  SizedBox(height: 1.v),
                                  SizedBox(
                                      width: 51.h,
                                      child: Text(
                                          "msg_activities_completed2".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodySmallGray500
                                              .copyWith(height: 1.33)))
                                ])))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_recent_activities".tr,
              style: CustomTextStyles.titleMediumSemiBold),
          SizedBox(height: 7.v),
          BlocSelector<TutorsTwoBloc, TutorsTwoState, TutorsTwoModel?>(
              selector: (state) => state.tutorsTwoModelObj,
              builder: (context, tutorsTwoModelObj) {
                return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.v);
                    },
                    itemCount:
                        tutorsTwoModelObj?.userprofileItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      UserprofileItemModel model =
                          tutorsTwoModelObj?.userprofileItemList[index] ??
                              UserprofileItemModel();
                      return UserprofileItemWidget(model);
                    });
              })
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
