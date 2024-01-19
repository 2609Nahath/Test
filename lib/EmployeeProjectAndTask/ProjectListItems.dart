import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableListItem extends StatefulWidget {
  final String title;

  ExpandableListItem({required this.title});

  @override
  _ExpandableListItemState createState() => _ExpandableListItemState();
}

class _ExpandableListItemState extends State<ExpandableListItem> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.title),
        onTap: () {
          setState(() {
            expanded = !expanded;
          });
        },
        subtitle: expanded
            ? Container(
                height: 200,
                width: 200,
                color: Colors.grey,
                child: Center(
                  child: Text('Expanded content goes here'),
                ),
              )
            : null,
      ),
    );
  }
}