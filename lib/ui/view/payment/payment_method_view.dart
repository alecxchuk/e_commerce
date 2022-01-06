import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/ui/view/payment/widgets/mastercard.dart';
import 'package:e_commerce/ui/view/payment/widgets/visacard.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_method_vm.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentMethodVm>.reactive(
      builder: (context, model, child) => Scaffold(
          // resizeToAvoidBottomInset: true,
          floatingActionButton: RoundButton(
            onPressed: () async => await model.showAddNewCard(),
            fillColor: AppColors.realBlack,
            iconName: plusButton,
            iconColor: AppColors.whiteColor,
            iconSize: 14,
          ),
          appBar: AconAppBar(
            bgColor: AppColors.whiteColor,
            onBackPress: () {},
            centerTitle: paymentMethods,
            isSearch: false,
          ),
          body: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UIHelper.verticalSpaceLarge,
                        Text(yourPaymentCards, style: AppTextStyle.subHeadText),
                        UIHelper.customVerticalSpace(21),
                        const MasterCardDesign(
                          cardHolder: 'Jennyfer Doe',
                          expiryDate: '05/23',
                          lastFourDigits: '3947',
                        ),
                        UIHelper.customVerticalSpace(25),
                        CustomCheckbox(
                            activeColor: AppColors.realBlack,
                            value: true,
                            onChanged: (_) {},
                            label: useAsDefaultPayment),
                        UIHelper.customVerticalSpace(40),
                        const VisaCardDesign(
                          cardHolder: 'Jennyfer Doe',
                          expiryDate: '05/23',
                          lastFourDigits: '3947',
                        ),
                        UIHelper.customVerticalSpace(25),
                        CustomCheckbox(
                            activeColor: AppColors.realBlack,
                            value: false,
                            onChanged: (_) {},
                            label: useAsDefaultPayment),
                        UIHelper.customVerticalSpace(70),
                        const Align(
                            alignment: Alignment.center,
                            child: RectangleBar(color: AppColors.realBlack)),
                        UIHelper.customVerticalSpace(9),
                      ])))),
      viewModelBuilder: () => PaymentMethodVm(),
    );
  }
}
