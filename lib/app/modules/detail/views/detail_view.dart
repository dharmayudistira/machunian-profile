import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manutd_profile/app/modules/detail/views/backdrop_player_view.dart';
import 'package:manutd_profile/app/modules/detail/views/biography_player_view.dart';
import 'package:manutd_profile/app/modules/detail/views/information_player_view.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/views/views/title_section_view.dart';

import '../controllers/detail_controller.dart';

class DetailView extends StatefulWidget {
  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  final controller = Get.find<DetailController>();

  var isFavorite = false;

  @override
  Widget build(BuildContext context) {
    isFavorite = controller.selectedPlayer.isFavorite ?? false;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Player",
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: _fabFavorite(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackdropPlayerView(),
            SizedBox(height: dimens_16),
            Padding(
              padding: const EdgeInsets.only(
                left: dimens_16,
                right: dimens_16,
                bottom: dimens_8,
              ),
              child: TitleSectionView(title: "Players Information"),
            ),
            InformationPlayerView(),
            SizedBox(height: dimens_16),
            Padding(
              padding: const EdgeInsets.only(
                left: dimens_16,
                right: dimens_16,
                bottom: dimens_8,
              ),
              child: TitleSectionView(title: "Biography"),
            ),
            BiographyPlayerView(),
          ],
        ),
      ),
    );
  }

  FloatingActionButton _fabFavorite() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
          controller.updateFavorite(isFavorite);

          if (isFavorite) {
            Get.snackbar(
              "Added to your favorite",
              "${controller.selectedPlayer.name} successfully added to your favorite",
            );
          } else {
            Get.snackbar(
              "Removed from your favorite",
              "${controller.selectedPlayer.name} successfully removed from your favorite",
            );
          }
        });
      },
      backgroundColor: Colors.red,
      child: (isFavorite)
          ? FaIcon(FontAwesomeIcons.solidStar)
          : FaIcon(FontAwesomeIcons.star),
    );
  }
}
