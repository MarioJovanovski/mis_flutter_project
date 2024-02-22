import 'package:flutter/material.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';



class TCardCounterIcon extends StatelessWidget {
  const TCardCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor ,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon:  Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text('4',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.white)),
            )),
      ],
    );
  }
}
