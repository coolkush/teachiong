import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
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
                            style:
                                CustomTextStyles.titleLargeOnPrimaryContainer,
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
      },
    );
  }
}
