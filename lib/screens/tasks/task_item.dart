import 'package:flutter/material.dart';
import 'package:to_do_app/shared/styles/app_colors.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            height: 80,
            width: 4,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(20)),
          ),
          Column(
            children: [
              Text(
                "Task Title one",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.primaryColor),
              ),
              Text("Task Description",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.primaryColor)),
            ],
          )
        ],
      ),
    );
  }
}
