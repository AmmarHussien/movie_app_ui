import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class MetaScore extends StatelessWidget {
  const MetaScore({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color(
              0xFF51CF66,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Text(
            '${movie.metascoreRating}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: kDefaultPadding / 4,
        ),
        const Text(
          'Metascore',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(
          '62 critic reviews',
          style: TextStyle(
            color: kTextLightColor,
          ),
        )
      ],
    );
  }
}

