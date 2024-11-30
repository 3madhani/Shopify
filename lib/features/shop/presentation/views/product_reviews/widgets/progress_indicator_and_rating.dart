import 'package:flutter/material.dart';

import 'rating_progress_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 3,
          child: Text('4.8',
              style: Theme.of(context).textTheme.displayLarge)),
      const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(value: 1.0, text: '5'),
              RatingProgressIndicator(value: 0.8, text: '4'),
              RatingProgressIndicator(value: 0.6, text: '3'),
              RatingProgressIndicator(value: 0.4, text: '2'),
              RatingProgressIndicator(value: 0.2, text: '1'),
            ],
          ))
    ]);
  }
}

