import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderCustom extends StatelessWidget {
  final int? itemCount;
  final Widget Function(BuildContext, int, int)? itemBuilder;
  final double? viewportFraction;
  final double? aspectRatio;
  final double? height;
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  const CarouselSliderCustom(
      {super.key,
      this.itemCount,
      this.itemBuilder,
      this.viewportFraction,
      this.aspectRatio,
      this.onPageChanged,
      this.height});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      options: CarouselOptions(
        pageSnapping: true,
        height: height,
        initialPage: 0,
        viewportFraction: viewportFraction ?? 0.7,
        disableCenter: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        aspectRatio: aspectRatio ?? 1.15,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
