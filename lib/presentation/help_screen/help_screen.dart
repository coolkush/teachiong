import 'bloc/help_bloc.dart';
import 'models/help_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/core/utils/validation_functions.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';
import 'package:kushagra_s_application2/widgets/custom_floating_text_field.dart';
import 'package:kushagra_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<HelpBloc>(
        create: (context) => HelpBloc(HelpState(helpModelObj: HelpModel()))
          ..add(HelpInitialEvent()),
        child: HelpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 2.v),
                            child: Column(children: [
                              BlocSelector<HelpBloc, HelpState,
                                      TextEditingController?>(
                                  selector: (state) => state.emailController,
                                  builder: (context, emailController) {
                                    return CustomFloatingTextField(
                                        controller: emailController,
                                        labelText: "lbl_email".tr,
                                        labelStyle:
                                            theme.textTheme.titleMedium!,
                                        hintText: "lbl_email".tr,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  }),
                              SizedBox(height: 15.v),
                              BlocSelector<HelpBloc, HelpState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.queryvalueController,
                                  builder: (context, queryvalueController) {
                                    return CustomTextFormField(
                                        controller: queryvalueController,
                                        hintText: "lbl_query".tr,
                                        textInputAction: TextInputAction.done,
                                        maxLines: 4);
                                  }),
                              SizedBox(height: 47.v),
                              CustomElevatedButton(text: "lbl_submit".tr),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_help".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
