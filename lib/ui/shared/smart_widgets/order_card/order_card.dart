import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final int orderNumber;
  final String orderDate;
  final String orderTrackingNumber;
  final int orderQuantity;
  final int totalPrice;
  const OrderCard(
      {Key? key,
      required this.orderNumber,
      required this.orderDate,
      required this.orderTrackingNumber,
      required this.orderQuantity,
      required this.totalPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 164,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        boxShadow: [
          BoxShadow(
              color: AppColors.realBlack.withOpacity(0.1),
              offset: const Offset(0, 1),
              blurRadius: 24)
        ],
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                children: [
                  Text(
                    '$orderText №$orderNumber',
                    style: AppTextStyle.subHeadText,
                  ),
                  const Spacer(),
                  Text(
                    orderDate,
                    style: AppTextStyle.helperText14,
                  )
                ],
              ),
            ),
            UIHelper.customVerticalSpace(15),
            Flexible(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: '$trackingNumber: ',
                        style: AppTextStyle.helperText14),
                    TextSpan(
                        text: orderTrackingNumber,
                        style: AppTextStyle.descrItemText),
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpaceExtraSmall,
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '$quantityText: ',
                              style: AppTextStyle.helperText14),
                          TextSpan(
                              text: '$orderQuantity ',
                              style: AppTextStyle.subHeadText),
                        ],
                      ),
                    ),
                  ),
                  //const Spacer(),
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '$totalAmount: ',
                              style: AppTextStyle.helperText14),
                          TextSpan(
                              text: '$totalPrice\$',
                              style: AppTextStyle.subHeadText),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.customVerticalSpace(14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                    width: 98,
                    height: 36,
                    onPressed: () {},
                    label: detailsText,
                    outlined: true,
                    active: true),
                Text(
                  deliveredText,
                  style: AppTextStyle.successText,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
