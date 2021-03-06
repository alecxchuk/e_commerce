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

class FavoriteProductModuleCard extends StatelessWidget {
  final String itemName;
  final String brandName;
  final String itemSize;
  final double itemPrice;
  final double starRating;
  final int numberOfRatings;
  final bool itemAvailable;
  final String? label; // sales or new
  final int? salesValue;
  const FavoriteProductModuleCard(
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
              height: 290, //itemAvailable ? 104 : 122,
              width: 164, //MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: UIHelper.smallBorderRadius,
                // boxShadow: [
                //   BoxShadow(
                //       color: AppColors.realBlack.withOpacity(0.08),
                //       offset: const Offset(0, 1),
                //       blurRadius: 25)
                // ],
                color: itemAvailable
                    ? AppColors.backgroundColor
                    : AppColors.whiteColor.withOpacity(0.5),
              ),
              child: Stack(children: [
                SizedBox(
                  width: screenWidth(context),
                  height: 184,
                  child: Image.asset(
                    coolGuy,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 8,
                  child: InkWell(
                    child: const Icon(
                      cancelIcon,
                      color: AppColors.appGrey,
                    ),
                    onTap: () {},
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Visibility(
                    visible: label != null,
                    child: CustomRoundedLabel(
                        tagText: label == newText ? newText : '-$salesValue%',
                        color: label == newText
                            ? AppColors.realBlack
                            : AppColors.saleColor),
                  ),
                ),
                Positioned(
                    top: 160,
                    right: 0,
                    child: Visibility(
                      visible: itemAvailable,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.realBlack.withOpacity(0.08),
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
                    )),
                Positioned(
                  bottom: 0,
                  child: Visibility(
                    visible: !itemAvailable,
                    child: Container(
                      width: 164,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: AppColors.whiteColor.withOpacity(0.7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 11),
                        child: Text(
                          soldOutText,
                          style: AppTextStyle.normalText11Black,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 192,
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: RatingsBar(
                              numberOfRatings: numberOfRatings,
                              itemCount: starRating),
                        ),
                        UIHelper.verticalSpaceSmall,
                        Flexible(
                          //fit: FlexFit.tight,
                          child: Text(itemName.toUpperCase(),
                              style: AppTextStyle.helperText),
                        ),
                        //UIHelper.verticalSpaceExtraSmall,
                        Text(brandName, style: AppTextStyle.subHeadText),
                        UIHelper.verticalSpaceSmall,
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                    text: '$colorText: ',
                                    style: AppTextStyle.helperText),
                                TextSpan(
                                    text: '$colorText: ',
                                    style: AppTextStyle.normalText11Black),
                                TextSpan(
                                    text: '    $sizeText: ',
                                    style: AppTextStyle.helperText),
                                TextSpan(
                                    text: '$itemSize ',
                                    style: AppTextStyle.normalText11Black),
                              ],
                            ),
                          ),
                        ),
                        UIHelper.verticalSpaceSmall,
                        Flexible(
                            child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: '$itemPrice\$ ',
                                  style: label == sales
                                      ? AppTextStyle.helperText14_500.copyWith(
                                          decoration:
                                              TextDecoration.lineThrough)
                                      : AppTextStyle.descrItemText),
                              TextSpan(
                                  text: label == sales
                                      ? '${itemPrice * 0.7}\$'
                                      : '',
                                  style: AppTextStyle.saleText14_500),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ]),
            ));
  }
}
