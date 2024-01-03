import 'models/profile_one_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/core/utils/validation_functions.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_floating_text_field.dart';
import 'provider/profile_one_provider.dart';

class ProfileOneScreen extends StatefulWidget {
  const ProfileOneScreen({Key? key}) : super(key: key);

  @override
  ProfileOneScreenState createState() => ProfileOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileOneProvider(), child: ProfileOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileOneScreenState extends State<ProfileOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 23.h, vertical: 14.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse23,
                          height: 101.adaptSize,
                          width: 101.adaptSize,
                          radius: BorderRadius.circular(50.h)),
                      SizedBox(height: 19.v),
                      _buildProfileName(context),
                      SizedBox(height: 14.v),
                      _buildDateOfBirth(context),
                      SizedBox(height: 14.v),
                      _buildKidsIdValue(context),
                      SizedBox(height: 15.v),
                      _buildName(context),
                      SizedBox(height: 13.v),
                      _buildEmail(context),
                      SizedBox(height: 13.v),
                      _buildPhoneNumber(context),
                      SizedBox(height: 5.v)
                    ])))));
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
  Widget _buildProfileName(BuildContext context) {
    return Selector<ProfileOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.profileNameController,
        builder: (context, profileNameController, child) {
          return CustomFloatingTextField(
              controller: profileNameController,
              labelText: "lbl_kid_name".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_kid_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildDateOfBirth(BuildContext context) {
    return Selector<ProfileOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.dateOfBirthController,
        builder: (context, dateOfBirthController, child) {
          return CustomFloatingTextField(
              controller: dateOfBirthController,
              labelText: "lbl_date_of_birth".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_date_of_birth".tr,
              contentPadding: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 8.v));
        });
  }

  /// Section Widget
  Widget _buildKidsIdValue(BuildContext context) {
    return Selector<ProfileOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.kidsIdValueController,
        builder: (context, kidsIdValueController, child) {
          return CustomFloatingTextField(
              controller: kidsIdValueController,
              labelText: "lbl_kid_s_id".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_kid_s_id".tr,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCopy1,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 56.v));
        });
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<ProfileOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameController,
        builder: (context, nameController, child) {
          return CustomFloatingTextField(
              controller: nameController,
              labelText: "lbl_parent_name".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_parent_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<ProfileOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomFloatingTextField(
              controller: emailController,
              labelText: "lbl_parent_email".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_parent_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Selector<ProfileOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.phoneNumberController,
        builder: (context, phoneNumberController, child) {
          return CustomFloatingTextField(
              controller: phoneNumberController,
              labelText: "msg_parent_phone_number".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "msg_parent_phone_number".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              });
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
