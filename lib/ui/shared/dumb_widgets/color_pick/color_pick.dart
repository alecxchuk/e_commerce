import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class ColorPicker extends StatelessWidget {
  final Color color;
  final bool selected;
  const ColorPicker({Key? key, required this.color, required this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Visibility(
              visible: selected,
              child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.saleColor,
                      width: 1,
                    ),
                    borderRadius: UIHelper.extraLargeCircularBorderRadius,
                  )),
            ),
          ),
          Positioned(
            top: 4,
            left: 4,
            child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: UIHelper.largeCircularBorderRadius,
                )),
          ),
        ],
      ),
    );
  }
}
