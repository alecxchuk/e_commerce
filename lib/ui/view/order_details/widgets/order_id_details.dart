import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class OrderIdDetails extends StatelessWidget {
  final int orderNumber;
  final String orderDate;
  final String orderTrackingNumber;
  final bool deliveryStatus;
  const OrderIdDetails({
    Key? key,
    required this.orderNumber,
    required this.orderDate,
    required this.orderTrackingNumber,
    required this.deliveryStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
        UIHelper.customVerticalSpace(15),
        Row(
          children: [
            Text('$trackingNumber: ', style: AppTextStyle.helperText14),
            Text(orderTrackingNumber, style: AppTextStyle.descrItemText),
            const Spacer(),
            Text(
              deliveredText,
              style: AppTextStyle.successText,
            )
          ],
        )
      ],
    );
  }
}
