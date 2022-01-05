import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class TextHelper extends StatelessWidget {
  final String label;
  final String amount;
  const TextHelper({Key? key, required this.label, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: label == 'Summary'
              ? AppTextStyle.helperText16_500
              : AppTextStyle.helperText14_500,
        ),
        Text(
          amount + '\$',
          style: label == 'Summary'
              ? AppTextStyle.headline3
              : AppTextStyle.subHeadText,
        )
      ],
    );
  }
}
