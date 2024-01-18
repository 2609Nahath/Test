// Hamburger.dart
import 'package:emp_management_system/Colors_Fonts/fonts/fonts.dart';
import 'package:flutter/material.dart';

class HamburgerButton {
  // Hamburger.dart
  static Drawer buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 1, 189, 178),
            ),
            child: Text(
              'Drawer Header', style: Fonts.google_fonts),
          ),
          ListTile(
            title: Text(
              'Item 1', style: Fonts.bodyFonts),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text(
              'Item 2', style: Fonts.bodyFonts,),
            onTap: () {
              // ...
            },
          ),
        ],
      ),
    );
  }
}
