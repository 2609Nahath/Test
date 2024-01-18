import 'package:emp_management_system/Hamburger.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'EmpBody.dart';
import 'fonts/fonts.dart';

class EmpPerformanceTask extends StatefulWidget {
  const EmpPerformanceTask({super.key});

  @override
  State<EmpPerformanceTask> createState() => _EmpPerformanceTaskState();
}

class _EmpPerformanceTaskState extends State<EmpPerformanceTask> {
  int _selectedIndex = 0;
      
  HamburgerButton drawerBar = HamburgerButton();
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: Fonts.optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: Fonts.optionStyle,
    ),
    Text(
      'Index 2: School',
      style: Fonts.optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      endDrawer: drawerBar.drawer,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('PrayagEdu',
          style: GoogleFonts.poppins(
          color: Colors.black, 
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        ),
        body: EmpBody(),
      );
  }
}