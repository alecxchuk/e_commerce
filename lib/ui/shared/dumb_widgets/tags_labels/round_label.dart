import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomRoundedLabel extends StatelessWidget {
  final String tagText;
  final Color color;
  const CustomRoundedLabel(
      {Key? key, required this.tagText, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: UIHelper.largeBorderRadius,
          color: color,
        ),
        child: Center(
          child: Text(tagText, style: AppTextStyle.subHeadText11White),
        ));
  }
}
