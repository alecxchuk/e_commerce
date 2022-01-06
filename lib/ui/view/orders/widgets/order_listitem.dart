import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Figma Flutter Generator RectangleWidget - RECTANGLE
        Container(
            height: 164,
            decoration: BoxDecoration(
              borderRadius: UIHelper.smallBorderRadius,
              boxShadow: [
                BoxShadow(
                    color: AppColors.realBlack.withOpacity(0.1),
                    offset: const Offset(0, 1),
                    blurRadius: 24)
              ],
              color: AppColors.whiteColor,
            ));
  }
}
