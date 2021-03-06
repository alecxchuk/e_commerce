import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/tags_labels/round_label.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'favorite_listitem_vm.dart';

class FavoriteProductCard extends StatelessWidget {
  final String itemName;
  final String brandName;
  final String itemSize;
  final double itemPrice;
  final double starRating;
  final int numberOfRatings;
  final bool itemAvailable;
  final String? label; // sales or new
  final int? salesValue;
  const FavoriteProductCard(
      {Key? key,
      required this.itemName,
      required this.brandName,
      required this.itemSize,
      required this.itemPrice,
      required this.starRating,
      required this.numberOfRatings,
      required this.itemAvailable,
      this.label,
      this.salesValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoriteProductCardVm>.reactive(
        viewModelBuilder: () => FavoriteProductCardVm(),
        builder: (context, model, child) => Container(
              height: itemAvailable ? 104 : 122,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: UIHelper.smallBorderRadius,
                // boxShadow: [
                //   BoxShadow(
                //       color: AppColors.realBlack.withOpacity(0.08),
                //       offset: const Offset(0, 1),
                //       blurRadius: 25)
                // ],
                color: itemAvailable
                    ? AppColors.whiteColor
                    : AppColors.whiteColor.withOpacity(0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: itemAvailable
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Stack(children: [
                            SizedBox(
                              width: 104,
                              height: 104,
                              child: Image.asset(
                                jeansGuy,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              top: 5,
                              left: 4,
                              child: Visibility(
                                visible: label != null,
                                child: CustomRoundedLabel(
                                    tagText: label == newText
                                        ? newText
                                        : '-$salesValue%',
                                    color: label == newText
                                        ? AppColors.realBlack
                                        : AppColors.saleColor),
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 120,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12.0),
                            child: Stack(clipBehavior: Clip.none, children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(itemName,
                                            style: AppTextStyle.helperText),
                                        const Spacer(),
                                        InkWell(
                                          child: Opacity(
                                            opacity: 0.54,
                                            child: const Icon(
                                              cancelIcon,
                                              size: 20,
                                              color: AppColors.appGrey,
                                            ),
                                          ),
                                          onTap: () {},
                                        )
                                      ],
                                    ),
                                  ),
                                  //UIHelper.verticalSpaceExtraSmall,
                                  Flexible(
                                      child: Text(brandName,
                                          style: AppTextStyle.subHeadText)),
                                  UIHelper.verticalSpaceSmall,
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '$colorText: ',
                                            style: AppTextStyle.helperText),
                                        TextSpan(
                                            text: '$colorText: ',
                                            style:
                                                AppTextStyle.normalText11Black),
                                        TextSpan(
                                            text: '    $sizeText: ',
                                            style: AppTextStyle.helperText),
                                        TextSpan(
                                            text: '$itemSize ',
                                            style:
                                                AppTextStyle.normalText11Black),
                                      ],
                                    ),
                                  ),
                                  UIHelper.verticalSpaceSmall,
                                  Flexible(
                                      child: Row(
                                    children: [
                                      // Text(
                                      //   '$itemPrice\$',
                                      //   style: AppTextStyle.descrItemText,
                                      // ),
                                      RichText(
                                        text: TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: '$itemPrice\$ ',
                                                style: label == sales
                                                    ? AppTextStyle
                                                        .helperText14_500
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough)
                                                    : AppTextStyle
                                                        .descrItemText),
                                            TextSpan(
                                                text: label == sales
                                                    ? '${itemPrice * 0.7}\$'
                                                    : '',
                                                style: AppTextStyle
                                                    .saleText14_500),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      RatingsBar(
                                          numberOfRatings: numberOfRatings,
                                          itemCount: starRating),
                                      const Spacer(),
                                    ],
                                  )),
                                ],
                              ),
                              Positioned(
                                  bottom: -24,
                                  right: -12,
                                  child: Visibility(
                                    visible: itemAvailable,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: AppColors.realBlack
                                                  .withOpacity(0.08),
                                              offset: const Offset(0, 4),
                                              blurRadius: 4)
                                        ],
                                        shape: BoxShape.circle,
                                        color: AppColors.saleColor,
                                      ),
                                      child: RoundButton(
                                        onPressed: () {},
                                        fillColor: AppColors.saleColor,
                                        width: 36,
                                        height: 36,
                                        iconName: shoppingBagText,
                                        iconColor: AppColors.whiteColor,
                                        elevation: 0,
                                      ),
                                    ),
                                  ))
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !itemAvailable,
                    child: Text(
                      soldOutText,
                      style: AppTextStyle.helperText,
                    ),
                  ),
                ],
              ),
            ));
  }
}
