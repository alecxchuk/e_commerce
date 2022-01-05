import 'package:e_commerce/ui/shared/smart_widgets/product_card_favorite/favorite_listitem.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_favorite/favorite_module.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'favorites_vm.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoritesVm>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AconAppBar(
            bgColor: AppColors.whiteColor,
            shadowColor: AppColors.realBlack.withOpacity(0.12),
            onBackPress: () {},
            elevation: 4,
            centerTitle: model.isGridView ? favorites : null,
            headlineText: model.isGridView ? null : favorites,
            isCatalog: true,
            isGridView: model.isGridView,
            setLayoutType: model.setViewType,
            navToFilterPage: () {},
          ),
          body: Padding(
              padding:
                  UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
              child: Container(
                color: AppColors.backgroundColor,
                child: model.isGridView
                    ? GridView.builder(
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisExtent: 290,
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            // onTap: () => model.navToProductCardView(),
                            child: Container(
                              color: AppColors.backgroundColor,
                              child: const FavoriteProductModuleCard(
                                  // favoriteClick: () {},
                                  // navToProductCardView: () {},
                                  // width:
                                  //     screenHeightPercentage(context, percentage: 0.5),
                                  itemName: 'T-Shirt SPANISH',
                                  // imageAssetName: blackTshirtGirl,
                                  brandName: 'MANGO',
                                  itemSize: 'itemSize',
                                  itemPrice: 40,
                                  starRating: 5,
                                  numberOfRatings: 10,
                                  itemAvailable: true),
                            ),
                          );
                        })
                    : ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            // onTap: () => model.navToProductCardView(),
                            child: const FavoriteProductCard(
                                // favoriteClick: () =>
                                //     model.showSelectSizeBottomSheet(),
                                // navToProductCardView: () =>
                                //     model.navToProductCardView(),
                                // width: screenHeightPercentage(context,
                                //     percentage: 0.5),
                                itemName: 'T-Shirt SPANISH',
                                // imageAssetName: blackTshirtGirl,
                                brandName: 'MANGO',
                                itemSize: 'itemSize',
                                itemPrice: 40,
                                starRating: 5,
                                numberOfRatings: 10,
                                itemAvailable: true),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return UIHelper.customVerticalSpace(28);
                        },
                        itemCount: 3),
              ))),
      viewModelBuilder: () => FavoritesVm(),
    );
  }
}
