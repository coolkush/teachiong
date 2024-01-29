import 'bloc/profile_tab_container_bloc.dart';
import 'models/profile_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/presentation/profile_page/profile_page.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class ProfileTabContainerScreen extends StatefulWidget {
  const ProfileTabContainerScreen({Key? key}) : super(key: key);

  @override
  ProfileTabContainerScreenState createState() =>
      ProfileTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTabContainerBloc>(
        create: (context) => ProfileTabContainerBloc(ProfileTabContainerState(
            profileTabContainerModelObj: ProfileTabContainerModel()))
          ..add(ProfileTabContainerInitialEvent()),
        child: ProfileTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileTabContainerScreenState extends State<ProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildFrameTen(context),
                  SizedBox(height: 4.v),
                  _buildCalendar(context),
                  SizedBox(height: 24.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 546.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            ProfilePage(),
                            ProfilePage(),
                            ProfilePage(),
                            ProfilePage()
                          ]))
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
        title: AppbarTitle(text: "lbl_history".tr));
  }

  /// Section Widget
  Widget _buildFrameTen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_date".tr,
              style: CustomTextStyles.titleLargePoppinsOnErrorContainer),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 5.v),
              child: Text("lbl_july".tr,
                  style: CustomTextStyles.labelLargeOnErrorContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 4.h, top: 6.v, bottom: 7.v))
        ]));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<ProfileTabContainerBloc, ProfileTabContainerState>(
        builder: (context, state) {
      return SizedBox(
          height: 74.v,
          width: 327.h,
          child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode: state.rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              calendarStyle: CalendarStyle(
                  outsideDaysVisible: false, isTodayHighlighted: true),
              daysOfWeekStyle: DaysOfWeekStyle(),
              headerVisible: false,
              focusedDay: state.focusedDay ?? DateTime.now(),
              rangeStartDay: state.rangeStart,
              rangeEndDay: state.rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(state.selectedDay, selectedDay)) {
                  state.focusedDay = focusedDay;
                  state.selectedDay = selectedDay;
                  state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                }
              },
              onRangeSelected: (start, end, focusedDay) {
                state.focusedDay = focusedDay;
                state.rangeEnd = end;
                state.rangeStart = start;
                state.rangeSelectionMode = RangeSelectionMode.toggledOn;
              },
              onPageChanged: (focusedDay) {
                state.focusedDay = focusedDay;
              }));
    });
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 36.v,
        width: 351.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            unselectedLabelColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            tabs: [
              Tab(child: Text("msg_physical_activity3".tr)),
              Tab(child: Text("msg_mindfulness_activity2".tr)),
              Tab(child: Text("msg_cognitive_activity2".tr)),
              Tab(child: Text("lbl_emotional_task".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
