import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/ui/view/checkout/checkout_vm.dart';
import 'package:e_commerce/ui/view/checkout/widgets/shipping_providers.dart';
import 'package:e_commerce/ui/view/checkout/widgets/text_helper.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CheckoutVm>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AconAppBar(
          bgColor: AppColors.whiteColor,
          onBackPress: () {},
          centerTitle: checkoutText,
          isSearch: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpaceLarge,
                Text(shippingAddressText, style: AppTextStyle.subHeadText),
                UIHelper.customVerticalSpace(21),
                // Figma Flutter Generator BgWidget - RECTANGLE
                Container(
                  height: 108,
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
                          GestureDetector(
                            onTap: () => model.nToShipping(),
                            child: Text(
                              changeText,
                              style: AppTextStyle.saleText14_500,
                            ),
                          )
                        ],
                      ),
                      UIHelper.verticalSpaceSmall,
                      Text(
                        '3 Newbridge Court Chino Hills, CA 91709, United States',
                        style: AppTextStyle.normalText14Black
                            .copyWith(height: 1.5),
                      ),
                    ],
                  ),
                ),
                UIHelper.customVerticalSpace(57),
                Row(
                  children: [
                    Text(
                      paymentText,
                      style: AppTextStyle.subHeadText,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => model.nToPayment(),
                      child: Text(
                        changeText,
                        style: AppTextStyle.saleText14_500,
                      ),
                    ),
                    UIHelper.customHorizontalSpace(23)
                  ],
                ),
                UIHelper.customVerticalSpace(24),
                Row(
                  children: [
                    Container(
                      width: 64,
                      height: 38,
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
                      child: Center(
                        child: SvgPicture.asset(
                          mastercardIcon,
                        ),
                      ),
                    ),
                    UIHelper.horizontalSpaceMedium,
                    Text(
                      '**** **** **** 3947',
                      style:
                          AppTextStyle.normalText14Black.copyWith(height: 1.5),
                    ),
                  ],
                ),
                UIHelper.customVerticalSpace(51),
                Text(
                  deliveryMethodText,
                  style: AppTextStyle.subHeadText,
                ),
                UIHelper.customVerticalSpace(21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ShippingProviders(
                        iconName: fedexIcon, timeFrame: '2-3 days'),
                    ShippingProviders(iconName: upsIcon, timeFrame: '2-3 days'),
                    ShippingProviders(iconName: dhlIcon, timeFrame: '2-3 days'),
                  ],
                ),
                UIHelper.customVerticalSpace(68),
                const TextHelper(label: orderText, amount: '112'),
                UIHelper.customVerticalSpace(21),
                const TextHelper(label: deliveryText, amount: '15'),
                UIHelper.customVerticalSpace(21),
                const TextHelper(label: summaryText, amount: '127'),
                UIHelper.customVerticalSpace(26),
                PrimaryButton(
                    onPressed: () {
                      model.nToSuccess();
                    },
                    label: submitOrderText,
                    outlined: false,
                    active: true),
                UIHelper.customVerticalSpace(33),
                const Align(
                    alignment: Alignment.center,
                    child: RectangleBar(
                      color: AppColors.realBlack,
                      width: 134,
                    )),
                UIHelper.customVerticalSpace(9),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => CheckoutVm(),
    );
  }
}
