import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final Color activeColor;
  final bool value;
  final dynamic onChanged;
  final String? label;
  const CustomCheckbox(
      {Key? key,
      required this.activeColor,
      required this.value,
      required this.onChanged,
      this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: activeColor,
          value: value,
          shape: RoundedRectangleBorder(
              borderRadius: UIHelper.extraSmallBorderRadius),
          onChanged: onChanged,
        ),
        Visibility(
          visible: label != null ? true : false,
          child: Text(
            label ?? '',
            style: AppTextStyle.normalText14Black,
          ),
        )
      ],
    );
  }
}
