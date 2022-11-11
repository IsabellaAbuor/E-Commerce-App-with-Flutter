import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/widgets/hero_carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/widgets.dart';

import '../../models/category.dart';

class Homescreen extends StatelessWidget {
  static const String routename = '/';

  const Homescreen({super.key});

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routename),
        builder: (_) => const Homescreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Zero to Unicorn'),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: Category.categories
            .map((category) => HeroCarouselCard(category: category))
            .toList(),
      )),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
