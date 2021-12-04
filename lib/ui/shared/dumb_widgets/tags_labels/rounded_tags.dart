import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomRoundedTag extends StatelessWidget {
  final String tagText;
  final bool filled;
  const CustomRoundedTag(
      {Key? key, required this.tagText, required this.filled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: UIHelper.largeBorderRadius,
        color: filled ? AppColors.blackColor : AppColors.whiteColor,
      ),
      child: Center(
        child: Text('Tag',
            style: !filled
                ? AppTextStyle.normalText14Black
                : AppTextStyle.normalText14White),
      ),
    );
  }
}
