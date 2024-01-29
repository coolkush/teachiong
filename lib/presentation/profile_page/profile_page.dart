import '../profile_page/widgets/userprofile2_item_widget.dart';
import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }
}

class ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer1,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<ProfileBloc, ProfileState, ProfileModel?>(
        selector: (state) => state.profileModelObj,
        builder: (context, profileModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount: profileModelObj?.userprofile2ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile2ItemModel model =
                  profileModelObj?.userprofile2ItemList[index] ??
                      Userprofile2ItemModel();
              return Userprofile2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
