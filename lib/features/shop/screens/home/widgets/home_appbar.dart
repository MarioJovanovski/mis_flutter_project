import 'package:flutter/material.dart';
import 'package:flutter_dom2/common/widgets/appbar/appbar.dart';
import 'package:flutter_dom2/common/widgets/products%20cart/cart_menu_icon.dart';
import 'package:flutter_dom2/features/scanner/TQrScanner.dart';
import 'package:flutter_dom2/features/scanner/TQrScannerButton.dart';
import 'package:flutter_dom2/features/shop/screens/home/home.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/constants/text_strings.dart';


class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

            children: [
               Text(TTexts.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.softGrey)),
              Text(TTexts.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white)),
            ],
          ),
          
          TQrScannerButton(),
        ],
      ),

      actions: [
        TCardCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        ),
      ],
    );
  }
}

    