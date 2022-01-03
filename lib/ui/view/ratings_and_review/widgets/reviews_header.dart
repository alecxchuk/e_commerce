import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ReviewsHeader extends StatelessWidget {
  const ReviewsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '8 reviews',
          style: AppTextStyle.headline2,
        ),
        CustomCheckbox(
          activeColor: AppColors.realBlack,
          value: true,
          onChanged: (_) {},
          label: 'With photo',
        )
      ],
    );
  }
}
