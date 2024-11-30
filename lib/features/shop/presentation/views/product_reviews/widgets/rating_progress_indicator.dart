import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/colors.dart';
import '../../../../../../core/utils/device/device_utility.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key,
    required this.value,
    required this.text,
  });

  final double value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
              textAlign: TextAlign.center,
              text,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: AppDeviceUtils.getScreenWidth(context) * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: AppColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor:
                    const AlwaysStoppedAnimation<Color>(AppColors.primary),
              ),
            ))
      ],
    );
  }
}
