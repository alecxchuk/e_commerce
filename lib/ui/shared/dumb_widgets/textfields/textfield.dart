import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Widget? suffixIcon;
  final bool? error;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.obscureText,
    this.suffixIcon,
    this.error,
  }) : super(key: key);
  final double contentPadding = 10.0;
  final double borderRadius = 4.0;
  final double textfieldHeight = 64.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: textfieldHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius),
        ),
        boxShadow: [
          BoxShadow(
              color: AppColors.realBlack.withOpacity(0.05),
              offset: const Offset(0, 1),
              blurRadius: 8)
        ],
        color: AppColors.whiteColor,
      ),
      child: Center(
        child: TextField(
            style: AppTextStyle.textFieldInput,
            obscureText: obscureText,
            decoration: InputDecoration(
                labelText: label,
                labelStyle: AppTextStyle.helperText14,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: contentPadding),
                suffixIcon: suffixIcon,
                border: InputBorder.none,
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.errorColor,
                  ),
                ))),
      ),
    );
  }
}
