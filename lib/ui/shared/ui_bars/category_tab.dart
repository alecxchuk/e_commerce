import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CategoryTabs extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 44.0;
  const CategoryTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: TabBar(
        indicatorWeight: 3,
        indicatorColor: AppColors.saleColor,
        labelStyle: AppTextStyle.subHeadText,
        labelColor: AppColors.realBlack,
        unselectedLabelStyle: AppTextStyle.normalText16Black,
        unselectedLabelColor: AppColors.realBlack,
        tabs: const [
          Tab(
            text: womenText,
          ),
          Tab(
            text: menText,
          ),
          Tab(
            text: kidsText,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
