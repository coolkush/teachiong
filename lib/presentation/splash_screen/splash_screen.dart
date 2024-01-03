import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenState createState() => SplashScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(),
      child: SplashScreen(),
    );
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 87.h,
            vertical: 356.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                height: 98.v,
                width: 73.h,
              ),
              Container(
                width: 118.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 20.v,
                  bottom: 19.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_royal".tr,
                        style: CustomTextStyles.headlineSmallInterBold,
                      ),
                      TextSpan(
                        text: "lbl_t".tr,
                        style: CustomTextStyles.headlineSmallInter,
                      ),
                      TextSpan(
                        text: "lbl_eaching".tr.toUpperCase(),
                        style: CustomTextStyles.titleLargeOnPrimaryContainer,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
