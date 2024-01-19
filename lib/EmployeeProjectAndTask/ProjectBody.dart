import 'package:flutter/material.dart';
import '../Colors_Fonts/fonts/fonts.dart';
import 'ProjectListItems.dart';

class ProjectBody {
  var arr = ['Project 1', 'Project 2', 'Project 3', 'Project 4'];

  Widget buildProjectBody() {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text("On Going", style: Fonts.bodyFonts),
          ),
          Expanded(
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
          Expanded(
            child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context, position) {
                return ExpandableListItem(
                  title: arr[position],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
