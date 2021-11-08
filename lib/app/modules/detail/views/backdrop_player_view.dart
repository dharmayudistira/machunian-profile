import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manutd_profile/app/modules/detail/controllers/detail_controller.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';

class BackdropPlayerView extends StatelessWidget {
  final controller = Get.find<DetailController>();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(dimens_32),
        topLeft: Radius.circular(dimens_32),
      ),
      child: Image.asset(
        "assets/images/${controller.selectedPlayer.backdropPhoto}.jpg",
        fit: BoxFit.fill,
        height: 250,
        width: double.maxFinite,
      ),
    );
  }
}
