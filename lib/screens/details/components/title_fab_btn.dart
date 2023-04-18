import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/movie.dart';

class TitleAndFabBtn extends StatelessWidget {
  const TitleAndFabBtn({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    buildTextUnderTitle('${movie.year}'),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    buildTextUnderTitle('PG-13'),
                    const SizedBox(
                      width: kDefaultPadding / 2,
                    ),
                    buildTextUnderTitle('2h 32min'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: kSecondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}

Text buildTextUnderTitle(String text) {
  return Text(
    text,
    style: const TextStyle(
      color: kTextLightColor,
    ),
  );
}
