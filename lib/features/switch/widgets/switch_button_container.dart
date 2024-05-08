import 'package:flutter/material.dart';
import 'package:shadow_switch/core/core.dart';
import 'package:shadow_switch/features/switch/switch.dart';

class SwitchButtonContainerWidget extends StatelessWidget {
  const SwitchButtonContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SwitchState.onTapSwitch();
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: isLightOn,
        builder: (context, value, child) {
          return AnimatedContainer(
            duration: const Duration(microseconds: 200),
            margin: value
                ? const EdgeInsets.only(
                    top: AppSizes.borderRadiusLg,
                  )
                : const EdgeInsets.only(
                    bottom: AppSizes.borderRadiusLg,
                  ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFF6F6F6F),
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(
                AppSizes.borderRadiusLg,
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: value
                    ? AppColors.gradientColor
                    : AppColors.gradientColor.reversed.toList(),
                stops: const [0, 0.5, 1.0],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF3D3D3D),
                  offset: Offset(0, value ? -8 : 8),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
