import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final double height;
  const CustomDropdown({Key? key, this.height = 48})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.appGrey),
          borderRadius: UIHelper.smallBorderRadius),
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        //value: widget.gender,
        icon: Padding(
          padding: UIHelper.smallPadding,
          child: const Icon(
            dropDownArrow,
            color: AppColors.realBlack,
          ),
        ),
        isExpanded: true,
        isDense: true,
        itemHeight: 50,
        style: AppTextStyle.descrItemText,
        items: <String>['Female', 'Male'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                value,
                style: AppTextStyle.normalText14Black,
              ),
            ),
          );
        }).toList(),
        onChanged: (String? gender) {
          // widget.setGender(gender);
        },
      )),
    );
  }
}
