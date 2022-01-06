import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/order_details/order_details_vm.dart';
import 'package:e_commerce/ui/view/order_details/widgets/order_id_details.dart';
import 'package:e_commerce/ui/view/order_details/widgets/order_information.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'widgets/order_items.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderDetailsVm>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AconAppBar(
          bgColor: AppColors.backgroundColor,
          centerTitle: orderDetailsText,
          onBackPress: () {},
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: UIHelper.customSymmetricPadding(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpaceLarge,
                const OrderIdDetails(
                    orderNumber: 1947034,
                    orderDate: '05-12-2019',
                    orderTrackingNumber: 'IW3475453455',
                    deliveryStatus: true),
                UIHelper.verticalSpaceMedium,
                Text(
                  '3 Items',
                  style: AppTextStyle.descrItemText,
                ),
                UIHelper.verticalSpaceMedium,
                const OrderItems(),
                UIHelper.verticalSpaceLarge,
                const OrderInformation(),
                UIHelper.verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryButton(
                      onPressed: () {},
                      label: reorderText,
                      outlined: true,
                      width: 160,
                      height: 36,
                    ),
                    PrimaryButton(
                      onPressed: () {},
                      label: leaveFeedbackText,
                      width: 160,
                      height: 36,
                    )
                  ],
                ),
                UIHelper.verticalSpaceLarge,
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => OrderDetailsVm(),
    );
  }
}
