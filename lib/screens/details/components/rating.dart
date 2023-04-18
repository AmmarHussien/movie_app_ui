

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/icons/star_fill.svg',
        ),
        const SizedBox(
          height: kDefaultPadding / 4,
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: '${movie.rating}/',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const TextSpan(
                text: '10\n',
              ),
              const TextSpan(
                text: '150,212',
                style: TextStyle(
                  color: kTextLightColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
