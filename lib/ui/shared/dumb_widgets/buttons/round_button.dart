import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? elevation;
  final Color fillColor;
  final Color? iconColor;
  final String iconName;
  final VoidCallback onPressed;
  const RoundButton(
      {Key? key,
      required this.onPressed,
      required this.fillColor,
      required this.iconName,
      this.height,
      this.width,
      this.elevation,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        elevation: elevation ?? 0,
        // fillColor == AppColors.whiteColor && iconName != plusButton
        //     ? 4
        //     : elevation ?? 0,
        fillColor: fillColor,
        shape: const CircleBorder(),
        constraints: BoxConstraints.tightFor(
          height: height ?? 52,
          width: width ?? 52,
        ),
        child: getIcon());
  }

  Widget getIcon() {
    switch (iconName) {
      case shoppingBagText:
        return SvgPicture.asset(
          shoppingBag,
          height: 30,
          color: iconColor,
        );
      case camera:
        return Icon(cameraIcon, color: iconColor);
      case favorite:
        return Icon(
            iconColor == AppColors.appGrey
                ? favoriteOutlinedIcon
                : favoriteIcon,
            color: iconColor);
      case plusButton:
        return Icon(
          addIcon,
          color: iconColor,
          size: iconColor == AppColors.whiteColor ? 32.0 : 24.0,
        );
      case minusButton:
        return Icon(
          minusIcon,
          color: iconColor,
        );

      default:
        return (Icon(Icons.search, color: iconColor));
    }
  }
}
