import 'package:flutter/material.dart';
import 'package:to_do_app/shared/styles/app_colors.dart';
import 'package:to_do_app/shared/styles/app_colors.dart';


class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.transparent,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 4,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task Title one",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text("Task Description",
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 12),
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 3),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.done,color: AppColors.white,size: 30,)
            )
          ],
        ),
      ),
    );
  }
}
