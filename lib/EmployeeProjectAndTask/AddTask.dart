import 'package:emp_management_system/Colors_Fonts/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddTask {

  void showTaskBody(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
          ),
          content: Container(
            height: 280,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
            ),
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () => {
                        Navigator.of(context).pop()
                      },
                      icon: Icon(Icons.arrow_back_ios)
                    )
                  ),
                  const Align(
                    alignment: Alignment(-.5,-.5),
                    child: TextField(
                        decoration: InputDecoration(
                        hintText: 'Add Task', // Hint text
                        border: OutlineInputBorder(), // Add border for better visibility
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(.5, .5),
                    child: TextField(
                      maxLines: 3,
                        decoration: InputDecoration(
                        hintText: 'Notes', // Hint text
                        border: OutlineInputBorder(), // Add border for better visibility
                      ),
                    ),
                  ),             
                  Align(
                    alignment: const Alignment(0,1),
                    child: ElevatedButton(
                      onPressed: () => {}, 
                      child: Text("Insert", style: Fonts.bodyFonts),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 1, 189, 178)),
                      ),
                    )
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () => {}, // Refer step 3
                      icon: Icon(Icons.calendar_month_outlined),
                    ),
                  )
                ],
              ),
            ),
          ),
          actions: const [],
        );
      },
    );
  }
}
