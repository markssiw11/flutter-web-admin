import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:my_web_admin/widget/company_name.dart';
import 'package:my_web_admin/widget/nav_bar.dart';
import 'package:my_web_admin/widget/nav_bar_item.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.centerLeft,
      height: MediaQuery.of(context).size.height,
      width: 100.0,
      color: Colors.blue.shade400,
      child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              CompanyNameWidget(),
              Center(child: Container(child: NavBarWidget())),
            ],
          )),
          NavBarItem(icon: FeatherIcons.logOut, touched: () {}, active: false)
        ],
      ),
    );
  }
}

