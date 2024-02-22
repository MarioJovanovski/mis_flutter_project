import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dom2/common/custom_shapes/container_circular.dart';
import 'package:flutter_dom2/common/widgets/images/rounded_image.dart';
import 'package:flutter_dom2/common/widgets/products/product_card.dart';
import 'package:flutter_dom2/features/shop/controllers/home_controller.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/constants/image_strings.dart';
import 'package:flutter_dom2/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          // GO wrapnuva so column za da pravi dots dodeka gi skrolas slikite Carousel Slider 13;40 min

          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updateOageIndicator(index),
          ),
          items: const [
            TRoundedImage(
              imageUrl: TImages.lavaza1,
            ),
            TRoundedImage(
              imageUrl: TImages.lavaza2,
            ),
            TRoundedImage(
              imageUrl: TImages.lavaza3,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  TCircularContainer(
                    width: 20,
                    height: 5,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentiIndex == i
                        ? TColors.primary
                        : TColors.darkerGrey,
                  ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: TSizes.spaceBtwSections,
        ),
       
      ],
    );
  }
}
