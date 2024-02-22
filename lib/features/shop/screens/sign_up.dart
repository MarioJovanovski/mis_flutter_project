import 'package:flutter/material.dart';
import 'package:flutter_dom2/features/authentication/controllers/signup_controller.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';
import 'package:flutter_dom2/utils/constants/image_strings.dart';

import 'package:flutter_dom2/utils/constants/sizes.dart';
import 'package:flutter_dom2/utils/constants/text_strings.dart';
import 'package:flutter_dom2/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(SignupController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              Form(
                key: controller.signupFromKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.firstName,
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            controller: controller.lastName,
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: TTexts.lastName,
                                prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextFormField(
                      controller: controller.username,
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.username,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextFormField(
                      controller: controller.email,
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.email,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),
                    TextFormField(
                      controller: controller.password,
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => controller.signup(),
                          child: Text(TTexts.createAccount),
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: dark ? TColors.darkerGrey : TColors.darkGrey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(TTexts.orSignInWith,
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                      child: Divider(
                    color: dark ? TColors.darkerGrey : TColors.darkGrey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  )),
                  const SizedBox(height: TSizes.spaceBtwSections)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.lightGrey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.google),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.lightGrey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.facebook),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
