import 'package:flutter/material.dart';
import '../Colors_Fonts/fonts/fonts.dart';
import 'Project/ProjectBody.dart';
import 'Task/TaskBody.dart';

class ProjectTask extends StatefulWidget {
  const ProjectTask({Key? key}) : super(key: key);

  @override
  State<ProjectTask> createState() => _ProjectTaskState();
}

class _ProjectTaskState extends State<ProjectTask> {
  ProjectBody projectBody = ProjectBody();
  TaskBody taskBody = TaskBody();
  bool _showProjectBody = true;
  // ignore: unused_field
  bool _showTaskBody = false;

  @override
  Widget build(BuildContext context) {
    Color enableColor = const Color.fromRGBO(1, 189, 178, .2);
    Color disableColor = const Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 0),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  child: TextButton(
                    onPressed: () => _toggleBody(true, false),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(83, 25, 83, 25),
                      backgroundColor:
                          _showProjectBody ? enableColor : disableColor,
                    ),
                    child: Text(
                      "Projects",
                      style: Fonts.google_fonts,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: 50,
                  child: TextButton(
                    onPressed: () => _toggleBody(false, true),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(95, 25, 97, 25),
                      backgroundColor:
                          _showProjectBody ? disableColor : enableColor,
                    ),
                    child: Text(
                      "Tasks",
                      style: Fonts.google_fonts,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // Body
          Expanded(
            child: _showProjectBody
                ? projectBody.buildProjectBody(context)
                : taskBody.buildTaskBody(context),
          ),
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
