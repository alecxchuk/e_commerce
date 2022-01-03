import 'package:e_commerce/ui/shared/smart_widgets/product_card_catalog/catalog_module.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'horizontal_product_block_vm.dart';

class ProductBlockHorizontal extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String? titleHelper;
  const ProductBlockHorizontal(
      {Key? key, required this.title, this.subTitle, this.titleHelper})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductBlockHorizontalModel>.reactive(
      builder: (context, model, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: title == youCanLikeThis
                        ? AppTextStyle.headline3
                        : AppTextStyle.headline,
                  ),
                  Text(
                    titleHelper ?? viewAll,
                    style: AppTextStyle.normalText11Black,
                  )
                ]),
          ),
          Visibility(
            visible: subTitle != null,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Text(
                subTitle ?? '',
                style: AppTextStyle.helperText,
              ),
            ),
          ),
          UIHelper.customVerticalSpace(22),
          Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: SingleChildScrollView(
                  key: const PageStorageKey('value2'),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    color: AppColors.whiteColor,
                    child: Row(
                      children: [
                        CatalogueProductModuleCard(
                            imageAssetName: stripeGirl,
                            label: title.toUpperCase(),
                            salesValue: 20,
                            itemName: 'Collar Shirt',
                            brandName: 'Louis Vuitton',
                            itemSize: '3',
                            itemPrice: 400,
                            starRating: 4,
                            numberOfRatings: 5,
                            itemAvailable: true),
                        UIHelper.horizontalSpaceMedium,
                        CatalogueProductModuleCard(
                            imageAssetName: whiteTshirtGuy,
                            label: title.toUpperCase(),
                            salesValue: 15,
                            itemName: 'Collar Shirt',
                            brandName: 'Louis Vuitton',
                            itemSize: '3',
                            itemPrice: 400,
                            starRating: 4,
                            numberOfRatings: 5,
                            itemAvailable: true),
                        UIHelper.horizontalSpaceMedium,
                        CatalogueProductModuleCard(
                            imageAssetName: coolGuy,
                            label: title.toUpperCase(),
                            salesValue: 20,
                            itemName: 'Collar Shirt',
                            brandName: 'Louis Vuitton',
                            itemSize: '3',
                            itemPrice: 400,
                            starRating: 4,
                            numberOfRatings: 5,
                            itemAvailable: true),
                      ],
                    ),
                  ))),
        ],
      ),
      viewModelBuilder: () => ProductBlockHorizontalModel(),
    );
  }
}
