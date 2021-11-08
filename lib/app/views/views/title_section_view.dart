import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/utils/fontsize_constants.dart';

class TitleSectionView extends GetView {
  final String title;

  TitleSectionView({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: dimens_8,
          height: sizeExtraLarge,
          color: Colors.red,
        ),
        SizedBox(width: dimens_8),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: sizeExtraLarge,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
