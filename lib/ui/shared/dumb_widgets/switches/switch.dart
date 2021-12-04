import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final dynamic onChanged;
  const CustomSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeTrackColor: AppColors.appGrey.withOpacity(0.1),
      activeColor: AppColors.successColor,
      inactiveThumbColor: AppColors.whiteColor,
      inactiveTrackColor: AppColors.appGrey.withOpacity(0.1),
    );
  }
}
