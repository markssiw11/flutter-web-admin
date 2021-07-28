import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<bool> selected = [false, true, false, false];
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32.0),
      child: Row(
        children: [
          TabItem(
            title: 'All',
            selected: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          TabItem(
            title: 'Current',
            selected: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          TabItem(
            title: 'Pending',
            selected: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          TabItem(
            title: 'Categories',
            selected: selected[3],
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
        ],
      ),
    );
  }
}

class TabItem extends StatefulWidget {
  final String title;
  final Function touched;
  final bool selected;
  const TabItem(
      {Key? key,
      required this.title,
      required this.selected,
      required this.touched})
      : super(key: key);

  @override
  _TabItemState createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.touched();
      },
      splashColor: Colors.white,
      hoverColor: Colors.white12,
      child: Row(
        children: [
          !widget.selected
              ? Text(
                  widget.title,
                  style: GoogleFonts.quicksand(fontSize: 12.0),
                )
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    widget.title,
                    style: GoogleFonts.quicksand(
                        fontSize: 12.0, color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
    );
  }
}
