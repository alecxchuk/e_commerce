import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class BrandListTile extends StatelessWidget {
  final String title; // title text for the list tile
  final bool selected; // indicates whether the item is selected or not
  final Function(bool) onChanged; // changes selected state
  const BrandListTile(
      {Key? key,
      required this.title,
      this.selected = false,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        minVerticalPadding: 0,
        dense: true,
        title: Text(
          title,
          style: selected
              ? AppTextStyle.saleText16_600
              : AppTextStyle.normalText16Black,
        ),
        trailing: CustomCheckbox(
            activeColor: AppColors.saleColor,
            value: selected,
            onChanged: (_) {}));
  }
}
