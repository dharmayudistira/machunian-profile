import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manutd_profile/app/utils/fontsize_constants.dart';

class IntroductionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi there",
              style: GoogleFonts.poppins(
                fontSize: sizeLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Welcome to Manchester United Profile",
              style: GoogleFonts.poppins(fontSize: sizeMedium),
            ),
          ],
        ),
        CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
