import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:to_do_app/screens/tasks/task_item.dart';
import 'package:to_do_app/shared/styles/app_colors.dart';

class TasksTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: AppColors.primaryColor,
          dayColor: AppColors.primaryColor,
          activeDayColor: AppColors.white,
          activeBackgroundDayColor: AppColors.primaryColor,
          dotsColor: AppColors.white,
          selectableDayPredicate: (date) => true, //If I want to unlock clicking on a specific day
          locale: 'en_ISO',
        ),*/
        Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return TaskItem();
          },itemCount: 8,
          ),
        )
      ],
    );
  }
}
