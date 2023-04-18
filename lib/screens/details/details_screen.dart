import 'package:flutter/material.dart';

import 'package:movie_app_ui/models/movie.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        movie: movie,
      ),
    );
  }
}
