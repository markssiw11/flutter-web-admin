import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:my_web_admin/widget/nav_bar_item.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  List<bool> selected = [true, false, false, false, false];
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
      child: Column(
        children: [
          NavBarItem(
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
              });
            },
            icon: FeatherIcons.home,
          ),
          NavBarItem(
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
              });
            },
            icon: FeatherIcons.list,
          ),
           NavBarItem(
            active: selected[2],
            touched: () {
              setState(() {
                select(2);
              });
            },
            icon: FeatherIcons.folder,
          ),
           NavBarItem(
            active: selected[3],
            touched: () {
              setState(() {
                select(3);
              });
            },
            icon: FeatherIcons.messageSquare,
          ),
           NavBarItem(
            active: selected[4],
            touched: () {
              setState(() {
                select(4);
              });
            },
            icon: FeatherIcons.settings,
          ),
           
        ],
      ),
    );
  }
}
