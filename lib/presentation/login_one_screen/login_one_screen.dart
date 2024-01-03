import 'models/login_one_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';
import 'package:kushagra_s_application2/widgets/custom_floating_text_field.dart';
import 'package:kushagra_s_application2/widgets/custom_switch.dart';
import 'provider/login_one_provider.dart';

class LoginOneScreen extends StatefulWidget {
  const LoginOneScreen({Key? key}) : super(key: key);

  @override
  LoginOneScreenState createState() => LoginOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginOneProvider(), child: LoginOneScreen());
  }
}

class LoginOneScreenState extends State<LoginOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.02, 0),
                        end: Alignment(1, 1),
                        colors: [appTheme.gray5001, appTheme.blue5001])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 21.v),
                    child: Column(children: [
                      Selector<LoginOneProvider, TextEditingController?>(
                          selector: (context, provider) =>
                              provider.uniqueIdvalueController,
                          builder: (context, uniqueIdvalueController, child) {
                            return CustomFloatingTextField(
                                controller: uniqueIdvalueController,
                                labelText: "lbl_unique_id".tr,
                                labelStyle: theme.textTheme.titleMedium!,
                                hintText: "lbl_unique_id".tr,
                                textInputAction: TextInputAction.done);
                          }),
                      SizedBox(height: 22.v),
                      _buildEight(context),
                      SizedBox(height: 70.v),
                      CustomElevatedButton(text: "lbl_login".tr),
                      SizedBox(height: 5.v)
                    ])))));
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
        title: AppbarTitle(text: "lbl_kid_login".tr));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text("lbl_set_quick_login".tr,
              style: CustomTextStyles.titleMediumSemiBold)),
      Selector<LoginOneProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<LoginOneProvider>().changeSwitchBox1(value);
                });
          })
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
