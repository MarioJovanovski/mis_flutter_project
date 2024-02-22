import 'package:flutter/material.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.icon,
    this.color,
    this.backgorundColor, 
    this.onPressed,
  });

  final IconData icon;
  final Color? color;
  final Color? backgorundColor;
  final VoidCallback? onPressed;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgorundColor != null
            ? backgorundColor!
            : THelperFunctions.isDarkMode(context)
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color,),
      ),
    );
  }
}
