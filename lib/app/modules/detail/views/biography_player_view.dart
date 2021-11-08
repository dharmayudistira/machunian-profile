import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manutd_profile/app/modules/detail/controllers/detail_controller.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/utils/fontsize_constants.dart';

class BiographyPlayerView extends StatelessWidget {
  final controller = Get.find<DetailController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: dimens_16),
      child: Text(
        controller.selectedPlayer.biography ?? "Unknown",
        style: GoogleFonts.poppins(
          fontSize: sizeMedium,
        ),
      ),
    );
  }
}
