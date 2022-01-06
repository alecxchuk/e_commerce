import 'package:e_commerce/ui/shared/smart_widgets/product_card_order_info/order_info_listitem.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return const OrderInfoProductCard(
              itemName: 'Pullover',
              brandName: 'Mango',
              itemSize: 'L',
              itemPrice: '51',
              numberOfunits: 1);
        },
        separatorBuilder: (BuildContext context, int index) =>
            UIHelper.customVerticalSpace(24),
        itemCount: 3);
  }
}
