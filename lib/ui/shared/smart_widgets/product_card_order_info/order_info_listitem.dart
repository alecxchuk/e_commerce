import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'order_info_listitem_vm.dart';

class OrderInfoProductCard extends StatelessWidget {
  final String itemName;
  final String brandName;
  final String itemSize;
  final String itemPrice;
  final int numberOfunits;
  const OrderInfoProductCard(
      {Key? key,
      required this.itemName,
      required this.brandName,
      required this.itemSize,
      required this.itemPrice,
      required this.numberOfunits})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderInfoProductCardVm>.reactive(
        viewModelBuilder: () => OrderInfoProductCardVm(),
        builder: (context, model, child) => Container(
              height: 104,
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
                    child: Image.asset(
                      pulloverGirl,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 136,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12.0),
                      child: Column(
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
                          )),
                          UIHelper.verticalSpaceSmall,
                          Flexible(
                            child: Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '$unitText: ',
                                          style: AppTextStyle.helperText),
                                      TextSpan(
                                          text: '$numberOfunits',
                                          style:
                                              AppTextStyle.normalText11Black),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  '$itemPrice\$',
                                  style: AppTextStyle.descrItemText,
                                ),
                              ],
                            ),
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
