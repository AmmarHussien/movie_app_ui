import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';

import 'package:movie_app_ui/models/movie.dart';

import '../../../components/section_title.dart';
import 'casr_crow.dart';
import 'genres.dart';
import 'header.dart';
import 'title_fab_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(
            movie: movie,
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleAndFabBtn(
            movie: movie,
          ),
          Geners(movie: movie),
          const SectionTitle(
            title: 'Polt Summary',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(
                  0xFF737599,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          CasrAndCrew(
            casts: movie.cast,
          )
        ],
      ),
    );
  }
}
