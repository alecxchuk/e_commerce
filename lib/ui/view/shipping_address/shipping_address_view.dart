import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'shipping_address_vm.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShippingAddressVm>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AconAppBar(
          bgColor: AppColors.whiteColor,
          onBackPress: () {},
          centerTitle: shippingAddressesText,
          isSearch: false,
        ),
        floatingActionButton: RoundButton(
            onPressed: () {
              model.nToAddAdress();
            },
            fillColor: AppColors.blackColor,
            iconName: plusButton,
            iconColor: AppColors.whiteColor),
        body: Padding(
          padding:
              UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 140,
                  padding: const EdgeInsets.fromLTRB(28, 18, 23, 18),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jane Doe',
                            style: AppTextStyle.helperText14_500
                                .copyWith(color: AppColors.blackColor),
                          ),
                          Text(
                            editText,
                            style: AppTextStyle.saleText14_500,
                          )
                        ],
                      ),
                      UIHelper.verticalSpaceSmall,
                      Text(
                        '3 Newbridge Court Chino Hills, CA 91709, United States',
                        style: AppTextStyle.normalText14Black
                            .copyWith(height: 1.5),
                      ),
                      UIHelper.verticalSpaceMedium,
                      CustomCheckbox(
                        activeColor: AppColors.blackColor,
                        value: index == 0 ? true : false,
                        onChanged: (_) {},
                        label: useAsDefaultShippingAddress,
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return UIHelper.customVerticalSpace(18);
              },
              itemCount: 3),
        ),
      ),
      viewModelBuilder: () => ShippingAddressVm(),
    );
  }
}
