import 'package:flutter/material.dart';

import 'fonts/fonts.dart';

class EmpBody extends StatefulWidget {
  const EmpBody({super.key});

  @override
  State<EmpBody> createState() => _EmpBodyState();
}

class _EmpBodyState extends State<EmpBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: [
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(105, 25, 75, 25)
              ),
              child: Text("Projects",style: Fonts.google_fonts,),
              onPressed: () =>{}
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(100, 25, 80, 25)
              ),
              child: Text("Tasks",style: Fonts.google_fonts,),
              onPressed: () =>{
                showBody(context)
              }
            ),
          ],),
        ],
      )
    );
  }
  
  showBody(BuildContext context) {
    Scaffold mainBody = const Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Text("Project title:"),
              Text("Description:")
            ],
          )
        ],
      ),
    );
    return mainBody;
  }
}