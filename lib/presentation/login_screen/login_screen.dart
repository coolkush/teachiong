import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/core/utils/validation_functions.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';
import 'package:kushagra_s_application2/widgets/custom_floating_text_field.dart';
import 'package:kushagra_s_application2/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blue5002,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 16.h, top: 20.v, right: 24.h),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeft,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          bottom: 1.v),
                                                      onTap: () {
                                                        onTapImgArrowLeft(
                                                            context);
                                                      }),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 125.h),
                                                      child: Text(
                                                          "lbl_login2".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumBold))
                                                ])),
                                            SizedBox(height: 25.v),
                                            _buildFive(context),
                                            SizedBox(height: 27.v),
                                            _buildTextField(context),
                                            SizedBox(height: 20.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 9.h),
                                                child: BlocBuilder<LoginBloc,
                                                        LoginState>(
                                                    builder: (context, state) {
                                                  return CustomFloatingTextField(
                                                      controller: state
                                                          .passwordController,
                                                      labelText:
                                                          "lbl_password".tr,
                                                      labelStyle: theme
                                                          .textTheme
                                                          .titleMedium!,
                                                      hintText:
                                                          "lbl_password".tr,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      textInputType:
                                                          TextInputType
                                                              .visiblePassword,
                                                      obscureText:
                                                          state.isShowPassword,
                                                      suffix: InkWell(
                                                          onTap: () {
                                                            context
                                                                .read<
                                                                    LoginBloc>()
                                                                .add(ChangePasswordVisibilityEvent(
                                                                    value: !state
                                                                        .isShowPassword));
                                                          },
                                                          child: Container(
                                                              margin: EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      16.h),
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgSettingsGray600,
                                                                  height: 24
                                                                      .adaptSize,
                                                                  width: 24
                                                                      .adaptSize))),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                              maxHeight: 56.v),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidPassword(
                                                                value,
                                                                isRequired:
                                                                    true))) {
                                                          return "err_msg_please_enter_valid_password"
                                                              .tr;
                                                        }
                                                        return null;
                                                      });
                                                })),
                                            SizedBox(height: 4.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                    "msg_forgot_password".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeSemiBold)),
                                            SizedBox(height: 28.v),
                                            _buildSeven(context),
                                            SizedBox(height: 68.v),
                                            _buildFour(context)
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 52.h, vertical: 232.v),
                                      decoration: AppDecoration
                                          .fillOnSecondaryContainer,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 44.v),
                                            Container(
                                                margin:
                                                    EdgeInsets.only(left: 1.h),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 9.v),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder14,
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgFaceIdPromp),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 19.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgThumbsUp,
                                                          height: 64.adaptSize,
                                                          width: 64.adaptSize),
                                                      SizedBox(height: 20.v),
                                                      Text("lbl_face_id".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumSFProText),
                                                      SizedBox(height: 3.v),
                                                      Text("lbl_try_again".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumSFProTextBlack90001),
                                                      SizedBox(height: 16.v),
                                                      Divider(
                                                          color: appTheme
                                                              .gray80001),
                                                      SizedBox(height: 11.v),
                                                      Text(
                                                          "msg_try_face_id_again"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimary),
                                                      SizedBox(height: 8.v),
                                                      Divider(
                                                          color: appTheme
                                                              .gray80001),
                                                      SizedBox(height: 11.v),
                                                      Text(
                                                          "lbl_try_password".tr,
                                                          style: CustomTextStyles
                                                              .bodyMediumPrimary)
                                                    ]))
                                          ])))
                            ])))))));
  }

  /// Section Widget
  Widget _buildFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 3.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomElevatedButton(
              height: 46.v,
              width: 152.h,
              text: "lbl_phone_number".tr,
              margin: EdgeInsets.only(top: 1.v),
              buttonStyle: CustomButtonStyles.fillPrimaryTL11,
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer),
          Padding(
              padding: EdgeInsets.only(top: 13.v, right: 47.h, bottom: 12.v),
              child: Text("lbl_email_id".tr, style: theme.textTheme.titleSmall))
        ]));
  }

  /// Section Widget
  Widget _buildTextField(BuildContext context) {
    return Container(
        width: 327.h,
        margin: EdgeInsets.only(left: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              BlocSelector<LoginBloc, LoginState, TextEditingController?>(
                  selector: (state) => state.phoneNumberController,
                  builder: (context, phoneNumberController) {
                    return CustomFloatingTextField(
                        width: 126.h,
                        controller: phoneNumberController,
                        labelText: "lbl_phone_number".tr,
                        labelStyle: theme.textTheme.titleMedium!,
                        hintText: "lbl_phone_number".tr,
                        textInputType: TextInputType.phone,
                        validator: (value) {
                          if (!isValidPhone(value)) {
                            return "err_msg_please_enter_valid_phone_number".tr;
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.only(top: 17.v),
                        borderDecoration:
                            FloatingTextFormFieldStyleHelper.custom,
                        filled: false);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text("lbl_set_quick_login".tr,
                  style: CustomTextStyles.titleMediumSemiBold)),
          BlocSelector<LoginBloc, LoginState, bool?>(
              selector: (state) => state.isSelectedSwitch,
              builder: (context, isSelectedSwitch) {
                return CustomSwitch(
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<LoginBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 141.h, vertical: 12.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Text("lbl_login".tr,
                  style: CustomTextStyles.titleMediumOnPrimaryContainer)
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
