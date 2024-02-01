import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center, // Align the row in the center
        children: [
          Icon(
            Icons.star_border_outlined,
            color: Color.fromARGB(255, 222, 214, 66),
          ),
          Icon(
            Icons.star_border_outlined,
            color: Color.fromARGB(255, 222, 214, 66),
          ),
          Icon(
            Icons.star_border_outlined,
            color: Color.fromARGB(255, 222, 214, 66),
          ),
          Icon(
            Icons.star_border_outlined,
            color: Color.fromARGB(255, 222, 214, 66),
          ),
          Icon(
            Icons.star_border_outlined,
            color: Color.fromARGB(255, 222, 214, 66),
          ),
        ],
      ),
    );
  }
}
