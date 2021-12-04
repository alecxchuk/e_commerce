import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'bag_list_item_vm.dart';

class BagProductCard extends StatelessWidget {
  final String itemName;
  final String itemSize;
  final String itemPrice;
  const BagProductCard(
      {Key? key,
      required this.itemName,
      required this.itemSize,
      required this.itemPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BagProductCardVm>.reactive(
        viewModelBuilder: () => BagProductCardVm(),
        builder: (context, model, child) => Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
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
                    height: 110,
                    child: Image.asset(
                      tShirtGuy,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(itemName, style: AppTextStyle.subHeadText),
                              const Spacer(),
                              InkWell(
                                child: const Icon(
                                  moreVertIcon,
                                  color: AppColors.appGrey,
                                ),
                                onTap: () {},
                              )
                            ],
                          ),
                          RichText(
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
                          const Spacer(),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              RoundButton(
                                onPressed: () => model.decreaseQuantity(),
                                fillColor: AppColors.whiteColor,
                                width: 36,
                                height: 36,
                                iconName: minusButton,
                                iconColor: AppColors.appGrey,
                                elevation: 2,
                              ),
                              UIHelper.customHorizontalSpace(15),
                              Text(
                                model.itemQuantity.toString(),
                                style: AppTextStyle.descrItemText,
                              ),
                              UIHelper.customHorizontalSpace(15),
                              RoundButton(
                                onPressed: () => model.increaseQuantity(),
                                fillColor: AppColors.whiteColor,
                                width: 36,
                                height: 36,
                                iconName: plusButton,
                                iconColor: AppColors.appGrey,
                                elevation: 2,
                              ),
                              const Spacer(),
                              Text(
                                '$itemPrice\$',
                                style: AppTextStyle.descrItemText,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
