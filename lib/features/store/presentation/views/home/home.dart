import 'package:flutter/material.dart';
import 'package:t_store/core/utils/constants/colors.dart';

import '../../../../../core/common/widgets/custom_shapes/containers/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.primary,
              padding: const EdgeInsets.all(0),
              child: Stack(
                children: [
                  CircularContainer(
                    backgroundColor: AppColors.textWhite.withOpacity(0.1),
                  ),
                   CircularContainer(
                    backgroundColor: AppColors.textWhite.withOpacity(0.1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

