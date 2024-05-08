import 'package:flutter/material.dart';
import 'package:shadow_switch/core/core.dart';
import 'package:shadow_switch/features/switch/switch.dart';

class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(AppSizes.lg),
          height: AppDeviceUtils.getScreenHeight(context) / 1.8,
          width: AppDeviceUtils.getScreenWidth(context) / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusXl),
            color: AppColors.darkGreyContainer,
          ),
          child: Container(
            margin: const EdgeInsets.all(AppSizes.xl),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              color: AppColors.darkContainer,
            ),
            child: const Stack(
              children: [
                SwitchButtonContainerWidget(),
                SwitchLightIndicatorWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
