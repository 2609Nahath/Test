import 'package:emp_management_system/EmployeeProjectAndTask/AddTask.dart';
import 'package:flutter/material.dart';
import 'package:emp_management_system/Colors_Fonts/fonts/fonts.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/ProjectListItems.dart';

class TaskBody {
  var arr = ['Task 1', 'Task 2', 'Task 3', 'Task 4'];
  AddTask addTask = AddTask();

  Widget buildTaskBody(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text("On Going", style: Fonts.bodyFonts),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context, position) {
                return ExpandableListItem(
                  title: arr[position],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text("Completed", style: Fonts.bodyFonts),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context, position) {
                return ExpandableListItem(
                  title: arr[position],
                );
              },
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 1, 189, 178),
                onPressed: () => {
                  addTask.showTaskBody(context)
                },
                child: const Icon(Icons.add)
              ),
            ),
          )
        ],
      ),
    );
  }
}
