import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fonts extends StatefulWidget {
  const Fonts({super.key});

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static TextStyle google_fonts = 
      GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle bodyFonts = 
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle boldFonts = 
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle smallFonts = 
    GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);

  static TextStyle hintFonts = 
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey);

  @override
  State<Fonts> createState() => _FontsState();
}

class _FontsState extends State<Fonts> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}