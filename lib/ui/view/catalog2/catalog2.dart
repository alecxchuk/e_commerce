import 'package:e_commerce/ui/shared/smart_widgets/product_card_catalog/catalog_module.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'catalog2_vm.dart';

class Catalog2Page extends StatelessWidget {
  const Catalog2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Catalog2PageVm>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AconAppBar(
          bgColor: AppColors.whiteColor,
          shadowColor: AppColors.realBlack.withOpacity(0.12),
          onBackPress: () {},
          elevation: 4,
          centerTitle: 'Women\'s tops',
          isCatalog: true,
          navToFilterPage: model.navToFilterPage,
        ),
        body: Padding(
          padding: UIHelper.customSymmetricPadding(vertical: 16),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => model.navToProductCardView(),
                  child: Container(
                    //color: Colors.white,
                    child: Row(
                      children: [
                        UIHelper.horizontalSpaceMedium,
                        Flexible(
                          child: CatalogueProductModuleCard(
                              favoriteClick: () =>
                                  model.showSelectSizeBottomSheet(),
                              navToProductCardView: () =>
                                  model.navToProductCardView(),
                              width: screenHeightPercentage(context,
                                  percentage: 0.5),
                              itemName: 'T-Shirt SPANISH',
                              imageAssetName: blackTshirtGirl,
                              brandName: 'MANGO',
                              itemSize: 'itemSize',
                              itemPrice: 40,
                              starRating: 5,
                              numberOfRatings: 10,
                              itemAvailable: true),
                        ),
                        Container(
                          color: Colors.red,
                          width: 16,
                        ),
                        Flexible(
                          child: CatalogueProductModuleCard(
                              favoriteClick: () =>
                                  model.showSelectSizeBottomSheet(),
                              navToProductCardView: () =>
                                  model.navToProductCardView(),
                              width: screenHeightPercentage(context,
                                  percentage: 0.5),
                              itemName: 'Blouse',
                              imageAssetName: whitePrettyGirl,
                              brandName: 'Dorathy Perkins',
                              itemSize: 'itemSize',
                              itemPrice: 40,
                              starRating: 5,
                              numberOfRatings: 10,
                              salesValue: 20,
                              label: sale,
                              itemAvailable: true),
                        ),
                        UIHelper.horizontalSpaceMedium,
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return UIHelper.customVerticalSpace(18);
              },
              itemCount: 3),
        ),
      ),
      viewModelBuilder: () => Catalog2PageVm(),
    );
  }
}
