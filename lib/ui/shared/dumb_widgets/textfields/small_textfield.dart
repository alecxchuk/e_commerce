import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmallTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? node;
  final String? label;
  final String? hint;
  final Widget? suffixIcon;
  final bool? error;
  final bool obscureText;
  final bool? isSearchField;
  SmallTextField({
    Key? key,
    this.controller,
    this.node,
    this.label,
    this.hint,
    required this.obscureText,
    this.suffixIcon,
    this.error,
    this.isSearchField,
  }) : super(key: key);
  final double contentPadding = 20.0;
  double borderRadius = 8;
  final double textfieldHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: textfieldHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(isSearchField != null ? 24 : 8),
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
            controller: controller,
            focusNode: node,
            style: AppTextStyle.textFieldInput,
            obscureText: obscureText,
            decoration: InputDecoration(
                // labelText: label,
                hintText: hint,
                hintStyle: AppTextStyle.helperText14,
                labelStyle: AppTextStyle.helperText16,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: contentPadding,
                    vertical: hint != null ? 10 : 0),
                prefixIcon: isSearchField == true
                    ? SvgPicture.asset(
                        searchIcon,
                        width: 14,
                      )
                    : null,
                prefixIconConstraints: const BoxConstraints(minWidth: 30),
                suffixIcon: isSearchField != true
                    ? error != null
                        ? goIcon()
                        : clearIcon()
                    : null,
                suffixIconConstraints:
                    const BoxConstraints(minWidth: 36, maxWidth: 36),
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

Widget clearIcon() {
  return const Icon(
    cancelIcon,
    color: AppColors.errorColor,
    size: 24,
  );
}

Widget goIcon() {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      Positioned(
        left: 2,
        bottom: 0,
        top: 0,
        child: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            color: AppColors.blackColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              arrowForwardIcon,
              color: AppColors.whiteColor,
              size: 20,
            ),
          ),
        ),
      )
    ],
  );
}
