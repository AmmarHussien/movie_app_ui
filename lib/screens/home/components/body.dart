import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';

import 'genre.dart';
import 'categories.dart';

import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
