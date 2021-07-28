import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyNameWidget extends StatelessWidget {
  const CompanyNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'M',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 18,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'ark',
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
