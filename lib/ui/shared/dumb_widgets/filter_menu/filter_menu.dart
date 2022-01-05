import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterMenu extends StatelessWidget {
  final String priceChoice;
  final Color bgColor;
  final VoidCallback navToFilterPage;
  final VoidCallback setLayoutType;
  final dynamic showSortBottomSheet;
  final bool isGridView; // grid or list view
  const FilterMenu(
      {Key? key,
      required this.priceChoice,
      required this.navToFilterPage,
      required this.setLayoutType,
      required this.showSortBottomSheet,
      required this.isGridView,
      this.bgColor = AppColors.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(filterList),
          onPressed: navToFilterPage,
        ),
        UIHelper.horizontalSpaceSmall,
        Text(filters, style: AppTextStyle.normalText11Black),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: SvgPicture.asset(upDownIcon),
          onPressed: showSortBottomSheet,
        ),
        UIHelper.horizontalSpaceSmall,
        Text(price + ':', style: AppTextStyle.normalText11Black),
        Text(priceChoice, style: AppTextStyle.normalText11Black),
        const Spacer(),
        GestureDetector(
            onTap: () =>
                setLayoutType(), // toggles between grid and list layouts
            child: SvgPicture.asset(isGridView ? gridViewIcon : listViewIcon)),
        UIHelper.horizontalSpaceMedium,
      ]),
    );
  }
}
