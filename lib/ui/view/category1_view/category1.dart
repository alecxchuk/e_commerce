import 'package:e_commerce/ui/shared/ui_bars/category_tab.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'category1_vm.dart';
import 'widgets/category_tab_view.dart';

class Categories1Page extends StatelessWidget {
  final PageController controller;
  const Categories1Page({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Category1PageVm>.reactive(
      builder: (context, model, child) => Container(
        margin: const EdgeInsets.only(top: 8),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: const CategoryTabs(),
            body: Container(
              color: AppColors.backgroundColor,
              child: TabBarView(
                children: [
                  CategoryTabView(
                    controller: controller,
                  ),
                  const Icon(Icons.directions_transit),
                  const Icon(Icons.directions_bike),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => Category1PageVm(),
    );
  }
}
