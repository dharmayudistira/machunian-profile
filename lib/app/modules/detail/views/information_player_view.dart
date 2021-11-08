import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manutd_profile/app/modules/detail/controllers/detail_controller.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/utils/fontsize_constants.dart';

class InformationPlayerView extends StatelessWidget {
  final controller = Get.find<DetailController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: dimens_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    controller.selectedPlayer.name ?? "Unknown Player",
                    style: GoogleFonts.poppins(
                      fontSize: sizeLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: dimens_8),
                  Image.asset(
                    "assets/icons/${controller.selectedPlayer.nationalityIcon}.png",
                    height: 24,
                  ),
                  SizedBox(width: dimens_8),
                  CircleAvatar(
                    child: Text(
                      controller.selectedPlayer.number ?? "00",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: sizeSmall,
                      ),
                    ),
                    backgroundColor: Colors.red,
                    radius: 12,
                  ),
                ],
              ),
              Text(
                controller.selectedPlayer.positionName ?? "Unknown Player",
                style: GoogleFonts.poppins(
                  fontSize: sizeMedium,
                ),
              ),
              Text(
                "Date of birth ${controller.selectedPlayer.dateOfBirth ?? "Unknown"}",
                style: GoogleFonts.poppins(
                  fontSize: sizeSmall,
                ),
              ),
              Text(
                "Joined since ${controller.selectedPlayer.dateOfJoin ?? "Unknown"}",
                style: GoogleFonts.poppins(
                  fontSize: sizeSmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
