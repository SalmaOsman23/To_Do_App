import 'package:flutter/material.dart';
import 'package:to_do_app/screens/settings/settings.dart';
import 'package:to_do_app/screens/tasks/tasks_tab.dart';
import 'package:to_do_app/shared/styles/app_colors.dart';

class HomeLayout extends StatefulWidget {

  static const String routeName = "Home Layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;
  List<Widget> tabs = [TasksTab(),SettingsTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text("ToDo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 12,
        color: AppColors.backgroundColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          currentIndex: index,
          onTap: (value){
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem( icon: Icon(Icons.list),label: ""),
            BottomNavigationBarItem( icon: Icon(Icons.settings),label: ""),
          ],
        ),
      ),
      body: tabs[index],
    );
  }
}

