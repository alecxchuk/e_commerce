import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/catalog1/catalog1.dart';
import 'package:e_commerce/ui/view/catalog2/catalog2.dart';
import 'package:e_commerce/ui/view/category1_view/category1.dart';
import 'package:e_commerce/ui/view/category2/category2.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'categories_vm.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesPageVm>.reactive(
      builder: (context, model, child) => MaterialApp(
        home: Scaffold(
          appBar: getAppBarForIndex(model.currentIndex),
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: <Widget>[
              Categories1Page(
                controller: _pageController,
              ),
              Categories2Page(
                controller: _pageController,
              ),
              const Catalog1Page(),
              const Catalog2Page(),
            ],
            onPageChanged: (page) {
              model.setIndex(page);
            },
          ),
          // Container(
          //   margin: const EdgeInsets.only(top: 8),
          //   child: DefaultTabController(
          //     length: 3,
          //     child: Scaffold(
          //       appBar: const CategoryTabs(),
          //       body: Container(
          //         color: AppColors.backgroundColor,
          //         child: const TabBarView(
          //           children: [
          //             CategoryTabView(),
          //             Icon(Icons.directions_transit),
          //             Icon(Icons.directions_bike),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
      viewModelBuilder: () => CategoriesPageVm(),
    );
  }

  getAppBarForIndex(int index) {
    switch (index) {
      case 0:
      case 1:
        return AconAppBar(
          bgColor: AppColors.backgroundColor,
          onBackPress: () {},
          centerTitle: categories,
          elevation: 4,
          navToFilterPage: () {},
        );
      case 2:
        return AconAppBar(
          bgColor: AppColors.whiteColor,
          shadowColor: AppColors.realBlack.withOpacity(0.12),
          onBackPress: () {},
          elevation: 4,
          headlineText: 'Women\'s tops',
          isCatalog: true,
          navToFilterPage: () {},
        );
      case 3:
        return AconAppBar(
          bgColor: AppColors.whiteColor,
          shadowColor: AppColors.realBlack.withOpacity(0.12),
          onBackPress: () {},
          elevation: 4,
          centerTitle: 'Women\'s tops',
          isCatalog: true,
          navToFilterPage: () {},
        );
      default:
        return AconAppBar(
          bgColor: AppColors.backgroundColor,
          onBackPress: () {},
          centerTitle: categories,
          elevation: 4,
          navToFilterPage: () {},
        );
    }
  }
}
