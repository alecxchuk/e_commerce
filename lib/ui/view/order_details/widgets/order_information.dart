import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderInformation extends StatelessWidget {
  const OrderInformation({Key? key, requi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(orderInformationText, style: AppTextStyle.descrItemText),
        UIHelper.customVerticalSpace(15),
        textHelper(shippingAddressText,
            '3 Newbridge Court ,Chino Hills, CA 91709, United States'),
        UIHelper.customVerticalSpace(24),
        textHelper(
          paymentMethodText,
        ),
        UIHelper.customVerticalSpace(24),
        textHelper(deliveryMethodText, 'FedEx, 3 days, 15\$'),
        UIHelper.customVerticalSpace(24),
        textHelper(discountText, '10%, Personal Promocode'),
        UIHelper.customVerticalSpace(24),
        textHelper(totalAmountText, '133\$'),
      ],
    );
  }

  Widget textHelper(String title, [String? label]) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 122,
          child: Text(
            '$title:',
            style: AppTextStyle.helperText14.copyWith(height: 1.5),
          ),
        ),
        UIHelper.horizontalSpaceSmall,
        Visibility(
          visible: title != paymentMethods,
          child: Flexible(
            child: Text(
              label ?? '',
              style: AppTextStyle.descrItemText.copyWith(height: 1.5),
            ),
          ),
        ),
        Visibility(
          visible: title == paymentMethodText,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(mastercardIcon),
              UIHelper.customHorizontalSpace(15),
              Text(
                '**** **** **** 3947',
                style: AppTextStyle.descrItemText.copyWith(height: 1.5),
              ),
            ],
          ),
        )
      ],
    );
  }
}
