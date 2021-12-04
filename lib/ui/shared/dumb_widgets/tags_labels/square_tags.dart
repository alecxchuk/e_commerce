import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomSquareTag extends StatelessWidget {
  final String tagText;
  final bool outlined;
  const CustomSquareTag(
      {Key? key, required this.tagText, required this.outlined})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        color: outlined ? AppColors.whiteColor : AppColors.saleColor,
        border: Border.all(
            color: AppColors.appGrey,
            width: 0.4,
            style: outlined ? BorderStyle.solid : BorderStyle.none),
      ),
      child: Center(
        child: Text(tagText,
            style: outlined
                ? AppTextStyle.normalText14Black
                : AppTextStyle.normalText14White),
      ),
    );
  }
}
