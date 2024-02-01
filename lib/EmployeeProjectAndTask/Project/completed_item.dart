import 'package:emp_management_system/Colors_Fonts/Fonts/font.dart';
import 'package:flutter/material.dart';

class CompletedItems extends StatefulWidget {
  final String title;
  final String description;
  final Color descriptionColor;
  final Color tileColor;

  const CompletedItems(
      {super.key,
      required this.title,
      required this.tileColor,
      required this.description,
      required this.descriptionColor});
  @override
  // ignore: library_private_types_in_public_api
  _CompletedItemsState createState() => _CompletedItemsState();
}

class _CompletedItemsState extends State<CompletedItems> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SizedBox(
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                child: Scaffold(
                  backgroundColor: widget.descriptionColor,
                  body: Column(
                    children: [
                      Container(
                        color: widget.tileColor,
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(widget.title,
                                        style: Fonts.bodyFonts),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () => {},
                                      hoverColor: Colors.transparent,
                                      icon:
                                          const Icon(Icons.arrow_forward_ios)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Completed Date",
                            style: Fonts.smallFonts,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Icon(Icons.calendar_month)),
                          ),
                          Text(
                            widget.description,
                            style: Fonts.smallFonts,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
