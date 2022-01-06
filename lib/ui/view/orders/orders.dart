import 'package:e_commerce/ui/shared/smart_widgets/order_card/order_card.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/orders/orders_vm.dart';
import 'package:e_commerce/ui/view/orders/widgets/order_listitem.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersVm>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: const AconAppBar(
            bgColor: AppColors.backgroundColor,
            headlineText: myOrdersText,
            catalogTagsList: [deliveredText, processingText, cancelledText],
            isCatalog: true,
          ),
          body: Container(
            color: AppColors.backgroundColor,
            padding:
                UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => model.nToOrderDetails(),
                    child: const OrderCard(
                        orderNumber: 1947034,
                        orderDate: '05-12-2019',
                        orderTrackingNumber: 'IW3475453455',
                        orderQuantity: 3,
                        totalPrice: 112),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return UIHelper.customVerticalSpace(18);
                },
                itemCount: 3),
          )),
      viewModelBuilder: () => OrdersVm(),
    );
  }
}
