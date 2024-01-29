import '../home_screen/widgets/eightythree_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/eightythree_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:kushagra_s_application2/widgets/custom_elevated_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              _buildViewProgress(context),
              SizedBox(height: 18.v),
              _buildEightyThree(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 73.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse4,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "lbl_hey_john".tr,
              margin: EdgeInsets.only(right: 31.h),
            ),
            AppbarSubtitleOne(
              text: "lbl_welcome_back".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMegaphone,
          margin: EdgeInsets.fromLTRB(21.h, 13.v, 21.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildViewProgress(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.gradientGrayToBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.cyan100,
            appTheme.blue100,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(14),
          topRight: Radius.circular(14),
          bottomLeft: Radius.circular(14),
          bottomRight: Radius.circular(14),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 11.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 135.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_your_have_completed".tr,
                              style: CustomTextStyles.titleLargePoppinsGray800_1
                                  .copyWith(
                                height: 1.40,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_200_a".tr,
                              style:
                                  CustomTextStyles.titleLargePoppinsIndigo300,
                            ),
                            TextSpan(
                              text: "lbl_ctivity".tr,
                              style:
                                  CustomTextStyles.titleLargePoppinsIndigo300,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    CustomElevatedButton(
                      height: 35.v,
                      width: 112.h,
                      text: "lbl_view_progress".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
              Container(
                height: 125.adaptSize,
                width: 125.adaptSize,
                margin: EdgeInsets.only(
                  right: 1.h,
                  bottom: 6.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: OutlineGradientButton(
                        padding: EdgeInsets.only(
                          left: 1.h,
                          top: 1.v,
                          right: 1.h,
                          bottom: 1.v,
                        ),
                        strokeWidth: 1.h,
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.cyan100,
                            appTheme.blue100,
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(62),
                          topRight: Radius.circular(62),
                          bottomLeft: Radius.circular(62),
                          bottomRight: Radius.circular(62),
                        ),
                        child: Container(
                          padding: EdgeInsets.all(11.h),
                          decoration: AppDecoration.gradientBlueToBlue.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder62,
                          ),
                          child: SizedBox(
                            height: 101.adaptSize,
                            width: 101.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              backgroundColor: theme
                                  .colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              strokeWidth: 1.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 37.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_80".tr,
                              style:
                                  CustomTextStyles.titleLargePoppinsBlack90001,
                            ),
                            SizedBox(height: 1.v),
                            SizedBox(
                              width: 51.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_a".tr.toUpperCase(),
                                      style: CustomTextStyles.bodySmallGray5009,
                                    ),
                                    TextSpan(
                                      text: "msg_ctivities_completed".tr,
                                      style: CustomTextStyles.bodySmallGray5009
                                          .copyWith(
                                        height: 1.33,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyThree(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, HomeModel?>(
      selector: (state) => state.homeModelObj,
      builder: (context, homeModelObj) {
        return StaggeredGridView.countBuilder(
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 4,
          crossAxisSpacing: 14.h,
          mainAxisSpacing: 14.h,
          staggeredTileBuilder: (index) {
            return StaggeredTile.fit(2);
          },
          itemCount: homeModelObj?.eightythreeItemList.length ?? 0,
          itemBuilder: (context, index) {
            EightythreeItemModel model =
                homeModelObj?.eightythreeItemList[index] ??
                    EightythreeItemModel();
            return EightythreeItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
