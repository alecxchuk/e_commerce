import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'catalog_listitem_vm.dart';

class CatalogProductCard extends StatelessWidget {
  final String itemName;
  final String brandName;
  final String itemPrice;
  final String iconName;
  final double starRating;
  final int numberOfRatings;
  const CatalogProductCard(
      {Key? key,
      required this.itemName,
      required this.brandName,
      required this.itemPrice,
      required this.starRating,
      required this.numberOfRatings,
      this.iconName = dancingGirl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CatalogProductCardVm>.reactive(
        viewModelBuilder: () => CatalogProductCardVm(),
        builder: (context, model, child) => Container(
              height: 104,
              width: screenWidth(context),
              decoration: BoxDecoration(
                borderRadius: UIHelper.smallBorderRadius,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.realBlack.withOpacity(0.08),
                      offset: const Offset(0, 1),
                      blurRadius: 25)
                ],
                color: AppColors.whiteColor,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 104,
                    height: 104,
                    child: Image.asset(
                      iconName,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context) - 136,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12.0),
                      child: Stack(clipBehavior: Clip.none, children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                                child: Text(itemName,
                                    style: AppTextStyle.subHeadText)),
                            UIHelper.verticalSpaceExtraSmall,
                            Flexible(
                                child: Text(brandName,
                                    style: AppTextStyle.helperText)),
                            UIHelper.verticalSpaceSmall,
                            Flexible(
                                child: RatingsBar(
                                    numberOfRatings: numberOfRatings,
                                    itemCount: starRating)),
                            UIHelper.verticalSpaceSmall,
                            Flexible(
                              child: Text(
                                '$itemPrice\$',
                                style: AppTextStyle.descrItemText,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                            bottom: -20,
                            right: -12,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          AppColors.realBlack.withOpacity(0.08),
                                      offset: const Offset(0, 4),
                                      blurRadius: 4)
                                ],
                                color: AppColors.whiteColor,
                              ),
                              child: RoundButton(
                                onPressed: () {},
                                fillColor: AppColors.whiteColor,
                                width: 36,
                                height: 36,
                                iconName: favorite,
                                iconColor: AppColors.appGrey,
                                elevation: 0,
                              ),
                            ))
                      ]),
                    ),
                  )
                ],
              ),
            ));
  }
}
