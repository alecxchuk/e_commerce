import 'package:e_commerce/ui/shared/smart_widgets/category_card/category_card.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class CategoryTabView extends StatelessWidget {
  final PageController controller;
  const CategoryTabView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
        child: Container(
          color: AppColors.backgroundColor,
          child: Column(
            children: [
              Container(
                  width: screenWidth(context),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: UIHelper.smallBorderRadius,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.realBlack.withOpacity(0.08),
                          offset: const Offset(0, 1),
                          blurRadius: 25)
                    ],
                    color: AppColors.saleColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('SUMMER SALES', style: AppTextStyle.headline2White),
                      UIHelper.verticalSpaceExtraSmall,
                      Text('Up to 50% off',
                          style: AppTextStyle.descrItemTextWhite)
                    ],
                  )),
              UIHelper.verticalSpaceMedium,
              const CategoryCard(
                label: newText,
                iconPath: jeanGirl,
              ),
              UIHelper.verticalSpaceMedium,
              GestureDetector(
                onTap: () => controller.jumpToPage(1),
                child: const CategoryCard(
                  label: clothes,
                  iconPath: kebGirl,
                ),
              ),
              UIHelper.verticalSpaceMedium,
              const CategoryCard(
                label: shoes,
                iconPath: shoeLeg,
              ),
              UIHelper.verticalSpaceMedium,
              const CategoryCard(
                label: accessories,
                iconPath: neckLady,
              )
            ],
          ),
        ),
      ),
    );
  }
}
