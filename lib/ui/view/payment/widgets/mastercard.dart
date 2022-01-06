import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MasterCardDesign extends StatelessWidget {
  final String cardHolder;
  final String expiryDate;
  final String lastFourDigits;
  const MasterCardDesign(
      {Key? key,
      required this.cardHolder,
      required this.expiryDate,
      required this.lastFourDigits})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: screenWidth(context),
        height: 216,
        decoration: BoxDecoration(
          borderRadius: UIHelper.smallBorderRadius,
          boxShadow: [
            BoxShadow(
                color: AppColors.realBlack.withOpacity(0.08),
                offset: const Offset(0, 1),
                blurRadius: 25)
          ],
          color: AppColors.realBlack,
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: -8,
                child: SvgPicture.asset(
                  masterCardBottomDesign,
                )),
            Positioned(
                top: 34,
                left: 24,
                child: SvgPicture.asset(
                  cardChip,
                )),
            Positioned(
                top: 87,
                left: 24,
                child: Text(
                  '**** **** **** $lastFourDigits',
                  style: AppTextStyle.headline2White.copyWith(letterSpacing: 4),
                )),
            Positioned(
                top: 152,
                left: 24,
                child: textHelper(cardHolderName, cardHolder)),
            Positioned(
                top: 152,
                left: 187,
                child: textHelper(expiryDateText, expiryDate)),
            Positioned(
                top: 152,
                right: 40,
                child: SvgPicture.asset(
                  mastercardIcon,
                )),
          ],
        ));
  }

  Widget textHelper(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyle.subHeadText10White),
        UIHelper.verticalSpaceMedium,
        Text(value, style: AppTextStyle.subHeadText14White)
      ],
    );
  }
}
