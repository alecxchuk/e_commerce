import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) setIndex;
  const BottomNav(
      {Key? key, required this.currentIndex, required this.setIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: AppColors.saleColor,
      unselectedItemColor: AppColors.appGrey,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedLabelStyle: AppTextStyle.saleText12_600,
      unselectedLabelStyle: AppTextStyle.baseStyle(
          color: AppColors.appGrey, fontSize: 12, fontWeight: FontWeight.w400),
      currentIndex: currentIndex,
      onTap: setIndex,
      items: getBottomIcons(context),
    );
  }

  List<BottomNavigationBarItem> getBottomIcons(context) {
    List<String> icons = [
      homeIcon,
      shoppingCart,
      shoppingBagBtm,
      favoriteIcons,
      profileIcon
    ];
    List<String> activeIcons = [
      homeIconFilled,
      shoppingCartFilled,
      shoppingBagFilled,
      favoriteIconFilled,
      profileIconFilled
    ];

    List<BottomNavigationBarItem> bottomNavList = List.generate(5, (i) {
      var item = BottomNavigationBarItem(
        label: bottomNavBarList[i],
        icon: SvgPicture.asset(
          icons[i],
        ),
        activeIcon: SvgPicture.asset(
          activeIcons[i],
          color: AppColors.saleColor,
        ),
      );

      return item;
    });

    return bottomNavList;
  }
}
