import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks/constants/colors.dart';
import 'package:kicks/constants/sizes.dart';
import 'package:kicks/device/device_utility.dart';
import 'package:kicks/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:kicks/helpers/helper_function.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
