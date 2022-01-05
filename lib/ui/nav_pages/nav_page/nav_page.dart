import 'package:animations/animations.dart';
import 'package:e_commerce/ui/nav_pages/categories/categories.dart';
import 'package:e_commerce/ui/nav_pages/main_page/main_page.dart';
import 'package:e_commerce/ui/nav_pages/main_page2/main_page2.dart';
import 'package:e_commerce/ui/nav_pages/main_page3/main_page3.dart';
import 'package:e_commerce/ui/shared/bottom_navigation/bottom_nav.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/ui/view/catalog2/catalog2.dart';
import 'package:e_commerce/ui/view/category1_view/category1.dart';
import 'package:e_commerce/ui/view/category2/category2.dart';
import 'package:e_commerce/ui/view/favourites/favorites_view.dart';
import 'package:e_commerce/ui/view/fogot_password/forgot_password.dart';
import 'package:e_commerce/ui/view/login/login_view.dart';
import 'package:e_commerce/ui/view/my_bag/my_bag_view.dart';
import 'package:e_commerce/ui/view/signup/signup_view.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

import 'nav_page_vm.dart';

class NavPage extends StatelessWidget {
  const NavPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return ViewModelBuilder<NavPageVm>.reactive(
      //disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: SizedBox(
            width: 134,
            height: 5,
            child: FittedBox(
              child: RectangleBar(
                color: AppColors.realBlack,
              ),
            ),
          ),
        ),
        body: Scaffold(
          body: PageTransitionSwitcher(
            reverse: model.reverse,
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child,
                Animation<double> primaryAnimation,
                Animation<double> secondaryAnimation) {
              return SharedAxisTransition(
                  child: child,
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal);
            },
            child: getViewForIndex(model.currentIndex),
          ),
          bottomNavigationBar: BottomNav(
            currentIndex: model.currentIndex,
            setIndex: model.setIndex,
          ),
        ),
      ),
      viewModelBuilder: () => NavPageVm(),
    );
  }

  ///Get all the pages and match them to the bottom nav icon
  ///that is clicked this would change the view to the current
  /*Widget*/ getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const MainPage1();
      case 1:
        return const MainPage2();
      case 2:
        return MyBagView();
      case 3:
        return FavoriteView();
      default:
        return Catalog2Page();
    }
  }
}
