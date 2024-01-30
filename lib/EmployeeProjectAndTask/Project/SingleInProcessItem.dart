import 'package:emp_management_system/Colors_Fonts/fonts/fonts.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/AppBar.dart';
import 'package:emp_management_system/EmployeeProjectAndTask/Hamburger.dart';
import 'package:flutter/material.dart';

class SingleInProcessItem extends StatefulWidget {
  const SingleInProcessItem({super.key});

  @override
  State<SingleInProcessItem> createState() => _SingleInProcessItemState();
}

class _SingleInProcessItemState extends State<SingleInProcessItem> {
  HomeAppBar homeAppBar = HomeAppBar();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: homeAppBar.appBar,
        endDrawer: HamburgerButton.buildDrawer(),
        body: Column(
          children: [
            Text(
              "EMS",
              style: Fonts.boldFonts,
            ),
          ],
        ));
  }
}
