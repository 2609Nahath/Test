import 'package:emp_management_system/EmployeeProjectAndTask/Project/CompletedItems.dart';
import 'package:flutter/material.dart';
import '../../Colors_Fonts/fonts/fonts.dart';
import '../Task/AddTask.dart';
import 'InProressItems.dart';
import 'dart:math'; // Added import for dart:math

class ProjectBody {
  var inProgressProjectArr = ['Employee Management System', 'LMS', 'ERP System', 'Project 4', 'Project 5', 'Project 6'];
  var completedProjectArr = ['Project 1', 'Project 2', 'Project 3', 'Project 4', 'Project 5', 'Project 6'];
  var dueDateArray = ['19/02/2024','15/04/2024','08/05/2024'];
  var completedDate = ['01/02/2022','05/11/2023','23/12/2023'];

  static Color tileColors = Color.fromRGBO(218, 217, 217, 0.408);

  static List<Color> descriptionBgColor = [
    const Color.fromRGBO(1, 189, 178, .2),
    const Color.fromRGBO(104, 180, 175, 0.698),
    const Color.fromRGBO(57, 163, 156, 0.801),
  ];

  Widget buildProjectBody(BuildContext context) {
    final int itemCount = min(inProgressProjectArr.length, 3);
    AddTask addTask = AddTask();

    return Scaffold(
      body: Scrollbar(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(20),
                  child: Text("In Progress", style: Fonts.boldFonts),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // Remove the color when the button is hovered
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.transparent;
                          }
                          // Default color when not hovered
                          return Colors.transparent;
                        },
                      ),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (Set<MaterialState> states) {
                          // Set the fontWeight when the button is hovered
                          if (states.contains(MaterialState.hovered)) {
                            return Fonts.boldFonts.copyWith(color: Colors.black); // Adjust the style accordingly
                          }
                          // Default font style when not hovered
                          return Fonts.smallFonts.copyWith(color: Colors.black); // Adjust the style accordingly
                        },
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black), // Set foregroundColor explicitly
                    ),
                    child: const Text("View all"),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: itemCount,
              itemBuilder: (context, position) {
                return InProcessItems(
                  title: inProgressProjectArr[position],
                  tileColor: tileColors,
                  description: dueDateArray[position],
                  descriptionColor: descriptionBgColor[position % descriptionBgColor.length],
                );
              },
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(20),
                  child: Text("Completed", style: Fonts.boldFonts),
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(20),
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // Remove the color when the button is hovered
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.transparent;
                          }
                          // Default color when not hovered
                          return Colors.transparent;
                        },
                      ),
                      textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (Set<MaterialState> states) {
                          // Set the fontWeight when the button is hovered
                          if (states.contains(MaterialState.hovered)) {
                            return Fonts.boldFonts.copyWith(color: Colors.black); // Adjust the style accordingly
                          }
                          // Default font style when not hovered
                          return Fonts.smallFonts.copyWith(color: Colors.black); // Adjust the style accordingly
                        },
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.black), // Set foregroundColor explicitly
                    ),
                    child: const Text("View all"),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: itemCount,
              itemBuilder: (context, position) {
                return CompletedItems(
                  title: completedProjectArr[position],
                  tileColor: tileColors,
                  description: completedDate[position],
                  descriptionColor: descriptionBgColor[position % descriptionBgColor.length],
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
