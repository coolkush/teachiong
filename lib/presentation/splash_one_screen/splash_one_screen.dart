import 'bloc/splash_one_bloc.dart';
import 'models/splash_one_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_radio_button.dart';

class SplashOneScreen extends StatelessWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashOneBloc>(
      create: (context) => SplashOneBloc(SplashOneState(
        splashOneModelObj: SplashOneModel(),
      ))
        ..add(SplashOneInitialEvent()),
      child: SplashOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.02, 0),
              end: Alignment(1, 1),
              colors: [
                appTheme.gray5001,
                appTheme.blue5001,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 39.v),
                _buildGroup34(context),
                SizedBox(height: 15.v),
                CustomImageView(
                  imagePath: ImageConstant.imgPortraitYoung,
                  height: 338.v,
                  width: 375.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 79.v,
      leadingWidth: 65.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSettings,
        margin: EdgeInsets.only(left: 23.h),
      ),
      title: Container(
        width: 69.h,
        margin: EdgeInsets.only(left: 5.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_r".tr,
                style: CustomTextStyles.titleSmallInterPrimaryBold,
              ),
              TextSpan(
                text: "lbl_oyal".tr.toUpperCase(),
                style: CustomTextStyles.titleSmallInterPrimaryBold,
              ),
              TextSpan(
                text: "lbl_teaching".tr.toUpperCase(),
                style: theme.textTheme.labelSmall,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup34(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: BlocBuilder<SplashOneBloc, SplashOneState>(
        builder: (context, state) {
          return state.splashOneModelObj!.radioList.isNotEmpty
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 9.v,
                      ),
                      child: CustomRadioButton(
                        width: 327.h,
                        text: "lbl_admin".tr,
                        value: state.splashOneModelObj?.radioList[1] ?? "",
                        groupValue: state.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          context
                              .read<SplashOneBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 12.v,
                      ),
                      child: CustomRadioButton(
                        width: 327.h,
                        text: "msg_governor_governess".tr,
                        value: state.splashOneModelObj?.radioList[2] ?? "",
                        groupValue: state.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          context
                              .read<SplashOneBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 12.v,
                      ),
                      child: CustomRadioButton(
                        width: 327.h,
                        text: "lbl_parent".tr,
                        value: state.splashOneModelObj?.radioList[3] ?? "",
                        groupValue: state.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 14.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          context
                              .read<SplashOneBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 12.v,
                      ),
                      child: CustomRadioButton(
                        width: 327.h,
                        text: "lbl_children".tr,
                        value: state.splashOneModelObj?.radioList[4] ?? "",
                        groupValue: state.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          context
                              .read<SplashOneBloc>()
                              .add(ChangeRadioButtonEvent(value: value));
                        },
                      ),
                    ),
                  ],
                )
              : Container();
        },
      ),
    );
  }
}
