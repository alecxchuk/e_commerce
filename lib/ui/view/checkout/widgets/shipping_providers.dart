import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShippingProviders extends StatelessWidget {
  final String iconName;
  final String timeFrame;
  const ShippingProviders(
      {Key? key, required this.iconName, required this.timeFrame})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        boxShadow: [
          BoxShadow(
              color: AppColors.realBlack.withOpacity(0.08),
              offset: const Offset(0, 1),
              blurRadius: 25)
        ],
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconName,
          ),
          UIHelper.customVerticalSpace(11),
          Text(timeFrame,
              style:
                  AppTextStyle.helperText.copyWith(fontStyle: FontStyle.italic))
        ],
      ),
    );
  }
}
