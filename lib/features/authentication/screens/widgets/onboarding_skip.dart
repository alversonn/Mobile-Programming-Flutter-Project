import 'package:flutter/material.dart';
import 'package:kicks/constants/sizes.dart';
import 'package:kicks/device/device_utility.dart';
import 'package:kicks/features/authentication/controllers.onboarding/onboarding_controller.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace, 
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(), 
        child: const Text('Skip'),
      )
    );
  }
}
