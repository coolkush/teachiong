import '../tutors_three_screen/widgets/timerbutton_item_widget.dart';
import 'models/timerbutton_item_model.dart';
import 'models/tutors_three_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'provider/tutors_three_provider.dart';

class TutorsThreeScreen extends StatefulWidget {
  const TutorsThreeScreen({Key? key}) : super(key: key);

  @override
  TutorsThreeScreenState createState() => TutorsThreeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TutorsThreeProvider(), child: TutorsThreeScreen());
  }
}

class TutorsThreeScreenState extends State<TutorsThreeScreen> {
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
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Consumer<TutorsThreeProvider>(
                    builder: (context, provider, child) {
                  return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 13.v);
                      },
                      itemCount: provider
                          .tutorsThreeModelObj.timerbuttonItemList.length,
                      itemBuilder: (context, index) {
                        TimerbuttonItemModel model = provider
                            .tutorsThreeModelObj.timerbuttonItemList[index];
                        return TimerbuttonItemWidget(model);
                      });
                }))));
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
        title: AppbarTitle(text: "lbl_activity".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
