import 'bloc/profile_four_bloc.dart';
import 'models/profile_four_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_floating_text_field.dart';

class ProfileFourScreen extends StatelessWidget {
  const ProfileFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFourBloc>(
        create: (context) => ProfileFourBloc(
            ProfileFourState(profileFourModelObj: ProfileFourModel()))
          ..add(ProfileFourInitialEvent()),
        child: ProfileFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFourBloc, ProfileFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v),
                  child: Column(children: [
                    _buildMyProfile(context),
                    SizedBox(height: 14.v),
                    _buildHistory(context),
                    SizedBox(height: 14.v),
                    _buildHelp(context),
                    SizedBox(height: 14.v),
                    _buildPrivacy(context),
                    SizedBox(height: 14.v),
                    _buildAccount(context),
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
            margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_profile".tr));
  }

  /// Section Widget
  Widget _buildMyProfile(BuildContext context) {
    return BlocSelector<ProfileFourBloc, ProfileFourState,
            TextEditingController?>(
        selector: (state) => state.myProfileController,
        builder: (context, myProfileController) {
          return CustomFloatingTextField(
              controller: myProfileController,
              labelText: "lbl_my_profile".tr,
              labelStyle: CustomTextStyles.titleSmallPrimary,
              hintText: "lbl_my_profile".tr,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightBlack90001,
                      height: 29.adaptSize,
                      width: 29.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 70.v),
              contentPadding: EdgeInsets.fromLTRB(16.h, 36.v, 16.h, 12.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.gradientGrayToBlue,
              filled: false);
        });
  }

  /// Section Widget
  Widget _buildHistory(BuildContext context) {
    return BlocSelector<ProfileFourBloc, ProfileFourState,
            TextEditingController?>(
        selector: (state) => state.historyController,
        builder: (context, historyController) {
          return CustomFloatingTextField(
              controller: historyController,
              labelText: "lbl_history".tr,
              labelStyle: CustomTextStyles.titleSmallPrimary,
              hintText: "lbl_history".tr,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightBlack90001,
                      height: 29.adaptSize,
                      width: 29.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 70.v),
              contentPadding: EdgeInsets.fromLTRB(16.h, 37.v, 16.h, 11.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.gradientGrayToBlue,
              filled: false);
        });
  }

  /// Section Widget
  Widget _buildHelp(BuildContext context) {
    return BlocSelector<ProfileFourBloc, ProfileFourState,
            TextEditingController?>(
        selector: (state) => state.helpController,
        builder: (context, helpController) {
          return CustomFloatingTextField(
              controller: helpController,
              labelText: "lbl_help".tr,
              labelStyle: CustomTextStyles.titleSmallPrimary,
              hintText: "lbl_help".tr,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightBlack90001,
                      height: 29.adaptSize,
                      width: 29.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 70.v),
              contentPadding: EdgeInsets.fromLTRB(16.h, 36.v, 16.h, 12.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.gradientGrayToBlue,
              filled: false);
        });
  }

  /// Section Widget
  Widget _buildPrivacy(BuildContext context) {
    return BlocSelector<ProfileFourBloc, ProfileFourState,
            TextEditingController?>(
        selector: (state) => state.privacyController,
        builder: (context, privacyController) {
          return CustomFloatingTextField(
              controller: privacyController,
              labelText: "lbl_privacy".tr,
              labelStyle: CustomTextStyles.titleSmallPrimary,
              hintText: "lbl_privacy".tr,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightBlack90001,
                      height: 29.adaptSize,
                      width: 29.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 70.v),
              contentPadding: EdgeInsets.fromLTRB(16.h, 36.v, 16.h, 12.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.gradientGrayToBlue,
              filled: false);
        });
  }

  /// Section Widget
  Widget _buildAccount(BuildContext context) {
    return BlocSelector<ProfileFourBloc, ProfileFourState,
            TextEditingController?>(
        selector: (state) => state.accountController,
        builder: (context, accountController) {
          return CustomFloatingTextField(
              controller: accountController,
              labelText: "lbl_account".tr,
              labelStyle: CustomTextStyles.titleSmallPrimary,
              hintText: "lbl_account".tr,
              textInputAction: TextInputAction.done,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 11.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightBlack90001,
                      height: 29.adaptSize,
                      width: 29.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 70.v),
              contentPadding: EdgeInsets.fromLTRB(16.h, 38.v, 16.h, 10.v),
              borderDecoration:
                  FloatingTextFormFieldStyleHelper.gradientGrayToBlue,
              filled: false);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
