import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_admin/widget/progress_card.dart';
import 'package:my_web_admin/widget/tab_widget.dart';

class DarkBoardWidget extends StatelessWidget {
  const DarkBoardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.63,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30, top: 25, bottom: 10),
            child: Text(
              'Hello Everyone',
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          TabBarWidget(),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 200,
            width: MediaQuery.of(context).size.width * 0.62,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  ProgressCard(
                      color: Colors.pink,
                      indicatorColor: Colors.blue.shade100,
                      projectName: 'The Moon',
                      percentComplete: 50,
                      icon: FeatherIcons.moon),
                 ProgressCard(
                      color: Colors.deepPurple,
                      indicatorColor: Colors.blue.shade100,
                      projectName: 'Delevery Club',
                      percentComplete: 24,
                      icon: FeatherIcons.truck),
                 ProgressCard(
                      color: Colors.orange.shade400,
                      indicatorColor: Colors.blue.shade100,
                      projectName: 'Travel Comrode',
                      percentComplete: 68,
                      icon: Icons.local_airport)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
