import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterMenu extends StatelessWidget {
  final String priceChoice;
  const FilterMenu({Key? key, required this.priceChoice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: const Icon(filterList),
        onPressed: () {},
      ),
      UIHelper.horizontalSpaceSmall,
      Text(filter, style: AppTextStyle.normalText11Black),
      const Spacer(),
      IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: SvgPicture.asset(upDownIcon),
        onPressed: () {},
      ),
      UIHelper.horizontalSpaceSmall,
      Text(price + ':', style: AppTextStyle.normalText11Black),
      Text(priceChoice, style: AppTextStyle.normalText11Black),
      const Spacer(),
      SvgPicture.asset(filterboxIcon),
    ]);
  }
}
