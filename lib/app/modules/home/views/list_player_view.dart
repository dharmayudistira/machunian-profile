import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manutd_profile/app/data/models/player_model.dart';
import 'package:manutd_profile/app/routes/app_pages.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/utils/fontsize_constants.dart';
import 'package:manutd_profile/app/views/views/title_section_view.dart';

class ListPlayerView extends StatelessWidget {
  final List<Player> listPlayer;

  ListPlayerView({required this.listPlayer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSectionView(title: "List Player"),
        SizedBox(height: dimens_8),
        ListView.separated(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          separatorBuilder: (ctx, idx) {
            return SizedBox(height: dimens_8);
          },
          itemCount: listPlayer.length,
          itemBuilder: (ctx, idx) {
            return ListPlayerItemView(player: listPlayer[idx]);
          },
        ),
      ],
    );
  }
}

class ListPlayerItemView extends StatelessWidget {
  final Player player;

  ListPlayerItemView({required this.player});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(dimens_8),
      ),
      child: ListTile(
        leading: Image.asset("assets/images/${player.photo}.png"),
        title: Text(
          player.name ?? "Unknown Player",
          style: GoogleFonts.poppins(
            fontSize: sizeMedium,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          player.positionName ?? "Unknown Position",
          style: GoogleFonts.poppins(fontSize: sizeSmall),
        ),
        trailing: CircleAvatar(
          backgroundColor: Colors.red,
          child: Text(
            player.number ?? "00",
            style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
        onTap: () => Get.toNamed(Routes.DETAIL, arguments: player),
      ),
    );
  }
}
