import 'package:flutter/cupertino.dart';
import 'package:shadow_switch/core/core.dart';
import 'package:shadow_switch/features/switch/switch.dart';

class SwitchLightIndicatorWidget extends StatelessWidget {
  const SwitchLightIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isLightOn,
      builder: (context, value, child) {
        return AnimatedPositioned(
          duration: const Duration(milliseconds: 200),
          right: 15,
          top: value ? 35 : 15,
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: value ? AppColors.green : AppColors.red,
              boxShadow: [
                BoxShadow(
                  color: value ? AppColors.lightShadow : AppColors.darkShadow,
                  offset: const Offset(0, 0),
                  blurRadius: 5,
                  spreadRadius: 5,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
