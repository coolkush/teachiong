import 'models/splash_one_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_radio_button.dart';
import 'provider/splash_one_provider.dart';

class SplashOneScreen extends StatefulWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashOneScreenState createState() => SplashOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashOneProvider(),
      child: SplashOneScreen(),
    );
  }
}

class SplashOneScreenState extends State<SplashOneScreen> {
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
                _buildAdminGroup(context),
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
  Widget _buildAdminGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Consumer<SplashOneProvider>(
        builder: (context, provider, child) {
          return provider.splashOneModelObj!.radioList.isNotEmpty
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
                        value: provider.splashOneModelObj?.radioList[1] ?? "",
                        groupValue: provider.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          provider.changeRadioButton1(value);
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
                        value: provider.splashOneModelObj?.radioList[2] ?? "",
                        groupValue: provider.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          provider.changeRadioButton1(value);
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
                        value: provider.splashOneModelObj?.radioList[3] ?? "",
                        groupValue: provider.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 14.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          provider.changeRadioButton1(value);
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
                        value: provider.splashOneModelObj?.radioList[4] ?? "",
                        groupValue: provider.radioGroup,
                        padding: EdgeInsets.symmetric(
                          horizontal: 11.h,
                          vertical: 15.v,
                        ),
                        isRightCheck: true,
                        onChange: (value) {
                          provider.changeRadioButton1(value);
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
