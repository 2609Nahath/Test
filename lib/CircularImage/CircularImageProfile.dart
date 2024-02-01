import 'package:flutter/material.dart';

class CircularImageProfile extends StatefulWidget {
  const CircularImageProfile({Key? key}) : super(key: key);

  @override
  State<CircularImageProfile> createState() => _CircularImageProfileState();
}

class _CircularImageProfileState extends State<CircularImageProfile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: CircleAvatar(
            radius: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: ClipOval(
                child: Image.asset(
                  'assets/avatar_1.jpg',
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            )));
  }
}
