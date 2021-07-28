import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressCard extends StatefulWidget {
  final Color color;
  final Color indicatorColor;
  final String projectName;
  final double percentComplete;
  final IconData icon;
  const ProgressCard({
    Key? key,
    required this.color,
    required this.indicatorColor,
    required this.projectName,
    required this.percentComplete,
    required this.icon,
  }) : super(key: key);

  @override
  _ProgressCardState createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    Color colorText = hovered ? Colors.white : Colors.black;

    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.symmetric(horizontal: 20),
        duration: Duration(microseconds: 300),
        height: hovered ? 160 : 155,
        width: hovered ? 200 : 195,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: hovered ? [
                  widget.color,
                  Color(0xFF17ead9),
                ] : [Colors.white, Colors.white] ),
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 20.0, spreadRadius: 5.0)
            ]),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    child: Center(
                      child: Icon(
                        widget.icon,
                        color: hovered ? Colors.black : Colors.white,
                        size: 14,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: hovered ? Colors.white : Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(widget.projectName,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: colorText,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RowItem(
                  icon: FeatherIcons.user,
                  title: "5 members",
                  color: colorText),
              SizedBox(
                height: 5,
              ),
              RowItem(
                  icon: FeatherIcons.clock,
                  title: "27 july 2021",
                  color: colorText),
              Container(
                margin: EdgeInsets.only(top: 5, left: 152),
                child: Row(
                  children: [
                    Text(
                      widget.percentComplete.toString(),
                      style: GoogleFonts.quicksand(color: colorText),
                    ),
                    Text('%', style: GoogleFonts.quicksand(color: colorText))
                  ],
                ),
              ),
              AnimatedContainer(
                height: 6,
                width: 160,
                duration: Duration(microseconds: 300),
                decoration: BoxDecoration(
                    color: hovered ? widget.indicatorColor : Color(0xffF5F6FA),
                    borderRadius: BorderRadius.circular(20)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedContainer(
                    duration: Duration(microseconds: 300),
                    width: (widget.percentComplete * 160 / 100),
                    decoration: BoxDecoration(
                        color: hovered ? Colors.white : widget.color,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;
  const RowItem(
      {Key? key, required this.color, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        SizedBox(
          width: 18,
        ),
        Icon(
          icon,
          size: 10,
          color: color,
        ),
        SizedBox(
          width: 10,
        ),
        Text(title,
            style: GoogleFonts.quicksand(
              fontSize: 10,
              color: color,
            ))
      ]),
    );
  }
}
