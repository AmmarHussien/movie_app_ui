
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'cast_card.dart';

class CasrAndCrew extends StatelessWidget {
  const CasrAndCrew({super.key, required this.casts});

  final List casts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) {
                return CastCard(
                  cast: casts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
