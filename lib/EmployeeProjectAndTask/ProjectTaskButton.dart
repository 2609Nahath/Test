import 'package:flutter/material.dart';
import '../Colors_Fonts/fonts/fonts.dart';
import 'ProjectBody.dart';
import 'TaskBody.dart';

class ProjectTask extends StatefulWidget {
  const ProjectTask({Key? key}) : super(key: key);

  @override
  State<ProjectTask> createState() => _ProjectTaskState();
}

class _ProjectTaskState extends State<ProjectTask> {
  ProjectBody projectBody = ProjectBody();
  TaskBody taskBody = TaskBody();
  bool _showProjectBody = true;
  bool _showTaskBody = false;

  @override
  Widget build(BuildContext context) {
    Color enableColor = Color.fromARGB(255, 231, 231, 231); 
    Color disableColor = const Color.fromARGB(255, 255, 255, 255); 

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () => _toggleBody(true, false),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(105, 25, 75, 25),
                  backgroundColor: _showProjectBody ? enableColor : disableColor,
                ),
                child: Text("Projects", style: Fonts.google_fonts),
              ),
              TextButton(
                onPressed: () => _toggleBody(false, true),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 25, 80, 25),
                  backgroundColor: _showTaskBody ? enableColor : disableColor,
                ),
                child: Text("Tasks", style: Fonts.google_fonts),
              ),
            ],
          ),
          const Divider(
            height: 0,
            color: Colors.black,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          _showProjectBody ? projectBody.buildProjectBody() : taskBody.buildTaskBody(),
        ],
      ),
    );
  }

  void _toggleBody(bool showProjectBody, bool showTaskBody) {
    setState(() {
      _showProjectBody = showProjectBody;
      _showTaskBody = showTaskBody;
    });
  }
}
