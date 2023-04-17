import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';
import 'dart:math' as math;

import 'movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _controller;
  int initialPage = 1;
  @override
  void initState() {
    super.initState();
    _controller = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          physics: const ClampingScrollPhysics(),
          controller: _controller,
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMoviesSlider(index),
        ),
      ),
    );
  }

  Widget buildMoviesSlider(int index) => AnimatedBuilder(
        builder: (context, child) {
          double value = 0.0;
          if (_controller.position.haveDimensions) {
            double values() {
              // ignore: unnecessary_null_comparison
              return value != null ? index - _controller.page! : 0;
            }

            value = values();
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 350),
            opacity: initialPage == index ? 1 : 0.4,
            child: Transform.rotate(
              angle: math.pi * value,
              child: MovieCard(
                movie: movies[index],
              ),
            ),
          );
        },
        animation: _controller,
      );
}
