import '../tutors_screen/widgets/taskcompleted_item_widget.dart';
import '../tutors_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/tutors_bloc.dart';
import 'models/taskcompleted_item_model.dart';
import 'models/tutors_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kushagra_s_application2/core/app_export.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:kushagra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:kushagra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class TutorsScreen extends StatelessWidget {
  const TutorsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorsBloc>(
        create: (context) =>
            TutorsBloc(TutorsState(tutorsModelObj: TutorsModel()))
              ..add(TutorsInitialEvent()),
        child: TutorsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 24.h, right: 24.h, bottom: 5.v),
                        child: Column(children: [
                          _buildDate(context),
                          SizedBox(height: 11.v),
                          _buildTaskCompleted(context),
                          SizedBox(height: 25.v),
                          _buildUserProfile(context)
                        ]))))));
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
        title: AppbarTitle(text: "msg_activity_progress".tr));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("lbl_date".tr,
            style: CustomTextStyles.titleLargePoppinsOnErrorContainer),
        Padding(
            padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("lbl_july".tr,
                  style: CustomTextStyles.labelLargeOnErrorContainer),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 4.h, bottom: 2.v))
            ]))
      ]),
      SizedBox(height: 4.v),
      BlocBuilder<TutorsBloc, TutorsState>(builder: (context, state) {
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
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
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
      })
    ]);
  }

  /// Section Widget
  Widget _buildTaskCompleted(BuildContext context) {
    return SizedBox(
        height: 119.v,
        child: BlocSelector<TutorsBloc, TutorsState, TutorsModel?>(
            selector: (state) => state.tutorsModelObj,
            builder: (context, tutorsModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15.h);
                  },
                  itemCount: tutorsModelObj?.taskcompletedItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    TaskcompletedItemModel model =
                        tutorsModelObj?.taskcompletedItemList[index] ??
                            TaskcompletedItemModel();
                    return TaskcompletedItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<TutorsBloc, TutorsState, TutorsModel?>(
        selector: (state) => state.tutorsModelObj,
        builder: (context, tutorsModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10.v);
              },
              itemCount: tutorsModelObj?.userprofile1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model =
                    tutorsModelObj?.userprofile1ItemList[index] ??
                        Userprofile1ItemModel();
                return Userprofile1ItemWidget(model);
              });
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
