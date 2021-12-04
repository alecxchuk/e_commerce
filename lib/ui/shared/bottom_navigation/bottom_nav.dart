import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: AppColors.saleColor,
      unselectedItemColor: AppColors.appGrey,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      selectedLabelStyle: AppTextStyle.saleText10,
      //unselectedLabelStyle: AppTextStyle.darkGreySize12,
      //currentIndex: vModel.currentIndex,
      //onTap: vModel.setIndex,
      items: getBottomIcons(context),
    );
  }

  List<BottomNavigationBarItem> getBottomIcons(context) {
    List<String> name = ['home', 'shop', 'bag', 'fav', 'Profile'];
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
        label: name[i],
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

  ///Get all the pages and match them to the bottom nav icon
  ///that is clicked this would change the view to the current
  /*Widget*/ getViewForIndex(int index) {
    switch (index) {
      case 0:
      //return const HomePage();
      case 1:
      //return const PluginPage();
      case 2:
      //return const DmPage();
      case 3:
      //return const YouPage();
      default:
      //return const HomePage();
    }
  }
}
