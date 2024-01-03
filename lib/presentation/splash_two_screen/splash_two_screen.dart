import 'models/splash_two_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'provider/splash_two_provider.dart';

class SplashTwoScreen extends StatefulWidget {
  const SplashTwoScreen({Key? key}) : super(key: key);

  @override
  SplashTwoScreenState createState() => SplashTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashTwoProvider(), child: SplashTwoScreen());
  }
}

class SplashTwoScreenState extends State<SplashTwoScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.splashScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.02, 0),
                        end: Alignment(1, 1),
                        colors: [appTheme.blue5002, appTheme.red50]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashTwo),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 95.v,
                              width: 71.h),
                          Container(
                              width: 114.h,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 18.v, bottom: 13.v),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_royal".tr,
                                        style: CustomTextStyles
                                            .titleLargePrimaryBold),
                                    TextSpan(
                                        text: "lbl_teaching".tr,
                                        style: CustomTextStyles
                                            .titleLargePrimaryBold23)
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }
}
