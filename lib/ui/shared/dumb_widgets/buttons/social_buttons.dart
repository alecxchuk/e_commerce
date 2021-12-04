import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final String iconName;
  const SocialButton({
    Key? key,
    required this.onPressed,
    required this.iconName,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        elevation: 2,
        fillColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: UIHelper.bigBorderRadius),
        constraints: BoxConstraints.tightFor(
          height: height ?? 64,
          width: width ?? 92,
        ),
        child: getIcon());
  }

  Widget getIcon() {
    return SvgPicture.asset(
      iconName,
      height: 30,
    );
  }
}
