import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Opacity(
      opacity: 0.05,
      child: Divider(
        height: 1,
        color: AppColors.appGrey,
      ),
    );
  }
}
