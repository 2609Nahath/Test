import 'package:flutter/material.dart';
import '../Colors_Fonts/fonts/fonts.dart';

class ProjectBody {
  bool _showProjectBody = true;
  bool _showTaskBody = false;
  
  Widget buildProjectBody() {
    Color enableColor = Color.fromARGB(0, 0, 0, 0);
    Color disableColor = Color.fromARGB(0, 0, 0, 0);
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                 padding: const EdgeInsets.fromLTRB(10, 15, 355, 15),
                backgroundColor: _showProjectBody ? enableColor : disableColor,
              ),
              child: Text(
                "Project Title:", style: Fonts.bodyFonts
              ),
            ),
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                 padding: const EdgeInsets.fromLTRB(10, 15, 355, 15),
                backgroundColor: _showProjectBody ? enableColor : disableColor,
              ),
              child:Text("Description:", style: Fonts.bodyFonts),
            ),
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                 padding: const EdgeInsets.fromLTRB(10, 15, 355, 15),
                backgroundColor: _showProjectBody ? enableColor : disableColor,
              ),
              child: Text("Start Date:", style: Fonts.bodyFonts),
            ),
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                 padding: const EdgeInsets.fromLTRB(10, 15, 355, 15),
                backgroundColor: _showProjectBody ? enableColor : disableColor,
              ),
              child: Text("End Date:", style: Fonts.bodyFonts),
            ),
            TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                 padding: const EdgeInsets.fromLTRB(10, 15, 325, 15),
                backgroundColor: _showProjectBody ? enableColor : disableColor,
              ),
              child: Text("Team Members:", style: Fonts.bodyFonts),
            ),
          ],
        ),
      ),
    );
  }
}
