import '../profile_page/widgets/userprofilelist_item_widget.dart';
import 'models/profile_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'provider/profile_provider.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfilePage(),
    );
  }
}

class ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

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
              _buildUserProfileList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer<ProfileProvider>(
        builder: (context, provider, child) {
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
            itemCount: provider.profileModelObj.userprofilelistItemList.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  provider.profileModelObj.userprofilelistItemList[index];
              return UserprofilelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
