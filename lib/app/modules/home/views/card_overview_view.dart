import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_stack/image_stack.dart';
import 'package:manutd_profile/app/data/models/player_model.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/utils/fontsize_constants.dart';

class CardOverviewView extends StatelessWidget {
  final List<Player> players;

  CardOverviewView({required this.players});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(dimens_8),
      ),
      child: Stack(
        children: [
          Positioned(
            top: dimens_16,
            left: dimens_32,
            child: Text(
              players[0].positionName ?? "Unknown Position",
              style: GoogleFonts.poppins(
                fontSize: sizeExtraLarge,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: dimens_32,
            bottom: dimens_16,
            child: ImageStack(
              imageList:
                  players.map((e) => "assets/images/${e.photo}.png").toList(),
              totalCount: players.length,
              imageRadius: 25,
              imageCount: 3,
              imageBorderWidth: 1.5,
              imageSource: ImageSource.Asset,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/${players[0].photo}.png",
              height: 175,
            ),
          )
        ],
      ),
    );
  }
}
