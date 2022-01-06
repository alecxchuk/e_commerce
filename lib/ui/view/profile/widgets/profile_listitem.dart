import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const ProfileListItem({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: AppTextStyle.subHeadText),
      subtitle: Text(subtitle, style: AppTextStyle.helperText),
      trailing: const Icon(
        forwardIcon,
        size: 16,
        color: AppColors.appGrey,
      ),
    );
  }
}
