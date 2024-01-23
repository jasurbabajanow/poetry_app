import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class Carusel extends StatefulWidget {
  const Carusel({super.key});

  @override
  State<Carusel> createState() => _CaruselState();
}

class _CaruselState extends State<Carusel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      // width: double.infinity,
      child: AnotherCarousel(
        images: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('images/pyragy.jpg')),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('images/pyragy2.jpg')),
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('images/sygar.png'))
        ],
        autoplay: true,
        dotSize: 3.0,
        indicatorBgPadding: 6.0,
        animationCurve: Curves.decelerate,
        animationDuration: const Duration(milliseconds: 2000),
        dotBgColor: Colors.transparent,
      ),
    );
  }
}
