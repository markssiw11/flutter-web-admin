import 'package:flutter/material.dart';
import 'package:my_web_admin/page/navigation/navigation_bar.dart';
import 'package:my_web_admin/widget/dark_board.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            DarkBoardWidget()
          ],
        ),
      ),
    );
  }
}