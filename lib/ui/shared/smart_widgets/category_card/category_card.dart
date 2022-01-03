import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CategoryCard extends StatelessWidget {
  final String label;
  final String iconPath;
  const CategoryCard({Key? key, required this.label, required this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: screenWidth(context),
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
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: screenWidthPercentage(context, percentage: 0.5) - 16,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                label,
                style: AppTextStyle.headline3,
              ),
            ),
          ),
          SizedBox(
            width: screenWidthPercentage(context, percentage: 0.5) - 16,
            child: Image.asset(
              iconPath,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
