import 'package:flutter/material.dart';
import 'package:flutter_dom2/features/authentication/controllers/login_controller.dart';
import 'package:flutter_dom2/features/shop/screens/sign_up.dart';
import 'package:flutter_dom2/utils/constants/image_strings.dart';
import 'package:flutter_dom2/utils/constants/sizes.dart';
import 'package:flutter_dom2/common/styles/spacing_style.dart';
import 'package:flutter_dom2/utils/constants/text_strings.dart';
import 'package:flutter_dom2/utils/helpers/helper_functions.dart';
import 'package:flutter_dom2/utils/validators/validation.dart';
import 'package:get/get.dart';
import 'package:flutter_dom2/navigation_menu.dart';

import 'package:iconsax/iconsax.dart';
import 'package:flutter_dom2/utils/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.sm),
                Text(TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Form(
              key: controller.loginFormKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spaceBtwSections),
                child: Column(
                  children: [
                    //email
                    const SizedBox(height: TSizes.sm),
                    TextFormField(
                      controller: controller.email,
                      validator: (value) => TValidator.validateEmail(value),
                      decoration: const InputDecoration(
                        prefix: Icon(Iconsax.direct_right),
                        labelText: TTexts.email,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    //pasword
                    TextFormField(
                      controller: controller.password,
                      validator: (value) =>
                          TValidator.validateEmptyText('Password', value),
                      decoration: const InputDecoration(
                        prefix: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //remember me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(TTexts.rememberMe),
                          ],
                        ),

                        //forget pasword
                        TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgetPasswordTitle)),
                      ],
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),
                    // Sign in button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed:  () => controller.emailAndPasswordSignIn(),
                          child: Text(TTexts.signIn),
                        )),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    // Create new acc
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => const SignupScreen()),
                          child: Text(TTexts.createAccount)),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              ),
            ),

            // Devider
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
            // Footyer

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
    );
  }
}
