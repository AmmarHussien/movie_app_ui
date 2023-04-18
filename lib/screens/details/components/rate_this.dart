import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RateThis extends StatelessWidget {
  const RateThis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/star.svg'),
        const SizedBox(
          height: kDefaultPadding / 4,
        ),
        Text(
          'Rate This',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
