import 'package:flutter/material.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/constants/sizes.dart';
import 'package:flutter_dom2/utils/device/device_utility.dart';
import 'package:flutter_dom2/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBacground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBacground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBacground
                ? dark
                    ? TColors.darkerGrey
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.darkerGrey) : null),
        child: Row(children: [
          Icon(
            icon,
            color: TColors.darkerGrey,
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodySmall,
          )
        ]),
      ),
    );
  }
}
