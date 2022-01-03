import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_catalog/catalog_listitem.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'catalog1_vm.dart';

class Catalog1Page extends StatelessWidget {
  const Catalog1Page({Key? key}) : super(key: key);

  static const List<Map<String, dynamic>> fakeCatalogData = [
    {
      'iconName': dancingGirl,
      'itemName': 'Pullover',
      'brandName': 'Mango',
      'starRating': 4,
      'itemPrice': '51',
      'numberOfRatings': 3
    },
    {
      'iconName': hatGirl,
      'itemName': 'Blouse',
      'brandName': 'Dorathy Perkins',
      'starRating': 0,
      'itemPrice': '34',
      'numberOfRatings': 0
    },
    {
      'iconName': whiteTshirtGril,
      'itemName': 'T-shirt',
      'brandName': 'LOST Ink',
      'starRating': 5,
      'itemPrice': '12',
      'numberOfRatings': 10
    },
    {
      'iconName': longSleeveGirl,
      'itemName': 'shirt',
      'brandName': 'topshop',
      'starRating': 4,
      'itemPrice': '51',
      'numberOfRatings': 3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Catalog1PageVm>.reactive(
      builder: (context, model, child) => Padding(
        padding: UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
        child: Container(
          color: AppColors.whiteColor,
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return CatalogProductCard(
                    iconName: fakeCatalogData[index]['iconName'],
                    itemName: fakeCatalogData[index]['itemName'],
                    brandName: fakeCatalogData[index]['brandName'],
                    itemPrice: fakeCatalogData[index]['itemPrice'],
                    starRating: fakeCatalogData[index]['starRating'].toDouble(),
                    numberOfRatings: fakeCatalogData[index]['numberOfRatings']);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                    height: 26,
                    color: Colors
                        .transparent); //,UIHelper.customVerticalSpace(26);
              },
              itemCount: fakeCatalogData.length),
        ),
      ),
      viewModelBuilder: () => Catalog1PageVm(),
    );
  }
}
