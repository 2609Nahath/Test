import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ProjectTaskButton.dart';
import 'Hamburger.dart';

class EmpPerformanceTask extends StatefulWidget {
  const EmpPerformanceTask({Key? key}) : super(key: key);

  @override
  State<EmpPerformanceTask> createState() => _EmpPerformanceTaskState();
}

class _EmpPerformanceTaskState extends State<EmpPerformanceTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: HamburgerButton.buildDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'PrayagEdu',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
      ),
      body: const ProjectTask(),
    );
  }
}
