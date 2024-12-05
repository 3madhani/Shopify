import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';


class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.backgroundColor = AppColors.white,
    this.borderRadius = AppSizes.cardRadiusLg,
    this.child,
    this.shadowBorder = false,
    this.borderColor = AppColors.borderPrimary,
    this.padding,
    this.margin,
  });

  final double? width, height;
  final Color backgroundColor;
  final double borderRadius;
  final Widget? child;
  final bool shadowBorder;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
        border: shadowBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
