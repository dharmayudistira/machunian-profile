import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:manutd_profile/app/utils/dimens_constants.dart';
import 'package:manutd_profile/app/views/views/title_section_view.dart';

class CarouselOverviewView extends StatelessWidget {
  final Widget carouselItemGoalkeeper;
  final Widget carouselItemDefender;
  final Widget carouselItemMidfielder;
  final Widget carouselItemForward;

  CarouselOverviewView({
    required this.carouselItemGoalkeeper,
    required this.carouselItemDefender,
    required this.carouselItemMidfielder,
    required this.carouselItemForward,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSectionView(title: "Overview"),
        SizedBox(height: dimens_8),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: [
            carouselItemGoalkeeper,
            carouselItemDefender,
            carouselItemMidfielder,
            carouselItemForward,
          ],
        )
      ],
    );
  }
}
