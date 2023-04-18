import 'package:flutter/material.dart';
import 'package:movie_app_ui/screens/details/components/rating.dart';

import '../../../models/movie.dart';
import 'meta_score.dart';
import 'rate_this.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(
                  50,
                ),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(movie.backdrop),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 100,
              width: size.width * 0.90,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(
                      0,
                      5,
                    ),
                    blurRadius: 50,
                    color: const Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Rating(movie: movie),
                  const RateThis(),
                  MetaScore(movie: movie),
                ],
              ),
            ),
          ),
          const SafeArea(child: BackButton())
        ],
      ),
    );
  }
}
