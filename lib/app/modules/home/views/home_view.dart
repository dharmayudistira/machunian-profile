import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manutd_profile/app/modules/home/views/card_overview_view.dart';
import 'package:manutd_profile/app/modules/home/views/carousel_overview_view.dart';
import 'package:manutd_profile/app/modules/home/views/introduction_view.dart';
import 'package:manutd_profile/app/modules/home/views/list_player_view.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final Widget carouselItemGoalkeeper =
        CardOverviewView(players: controller.getGoalkeepers());
    final Widget carouselItemDefender =
        CardOverviewView(players: controller.getDefenders());
    final Widget carouselItemMidfielder =
        CardOverviewView(players: controller.getMidfielders());
    final Widget carouselItemForward =
        CardOverviewView(players: controller.getForwards());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(dimens_16),
        child: ListView(
          children: [
            IntroductionView(),
            SizedBox(height: dimens_16),
            CarouselOverviewView(
              carouselItemGoalkeeper: carouselItemGoalkeeper,
              carouselItemDefender: carouselItemDefender,
              carouselItemMidfielder: carouselItemMidfielder,
              carouselItemForward: carouselItemForward,
            ),
            SizedBox(height: dimens_16),
            ListPlayerView(listPlayer: controller.getAllPlayer()),
          ],
        ),
      ),
    );
  }
}
