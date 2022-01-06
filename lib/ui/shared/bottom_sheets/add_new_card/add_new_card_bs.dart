import 'package:e_commerce/ui/shared/bottom_sheets/add_new_card/add_new_card_bs.form.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/textfield.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import 'add_new_card_vm.dart';

@FormView(
  fields: [
    FormTextField(name: 'cardName'),
    FormTextField(name: 'cardNumber'),
    FormTextField(name: 'expiryDate'),
    FormTextField(name: 'cvv'),
  ],
)
class AddNewCardBottomSheet extends StatelessWidget
    with $AddNewCardBottomSheet {
  final padding = const EdgeInsets.only(left: 16.0, right: 16);
  final borderThickness = 0.4;

  final SheetRequest request;
  final Function(SheetResponse) completer;
  AddNewCardBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = (MediaQuery.of(context).size.width - 332) / 2;
    return ViewModelBuilder<AddNewCardVm>.reactive(
      builder: (context, model, child) => SingleChildScrollView(
        child: Container(
            height: screenHeightPercentage(context, percentage: 0.75),
            width: screenWidth(context),
            padding: UIHelper.customSymmetricPadding(horizontal: 16),
            decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34))),
            //height: 400,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UIHelper.verticalSpaceMedium,
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 60,
                        height: 6,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(3),
                          ),
                          color: AppColors.appGrey,
                        )),
                  ),
                  UIHelper.verticalSpaceMedium,
                  Align(
                      alignment: Alignment.center,
                      child: Text(addNewCard, style: AppTextStyle.headline3)),
                  UIHelper.customVerticalSpace(22),
                  CustomTextField(
                      height: 64,
                      obscureText: false,
                      onChanged: () {},
                      controller: cardNameController,
                      hintText: 'Name on Card'),
                  UIHelper.customVerticalSpace(22),
                  CustomTextField(
                      height: 64,
                      obscureText: false,
                      onChanged: () {},
                      controller: cardNumberController,
                      contentPadding: UIHelper.customSymmetricPadding(
                          horizontal: 20, vertical: 20),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                        child: SvgPicture.asset(
                          mastercardIcon,
                        ),
                      ),
                      // suffixIconConstraints:
                      //     const BoxConstraints(maxWidth: 32, maxHeight: 25),
                      hintText: 'Card Number'),
                  UIHelper.customVerticalSpace(22),
                  CustomTextField(
                      height: 64,
                      obscureText: false,
                      onChanged: () {},
                      controller: expiryDateController,
                      hintText: 'Expiry Date'),
                  UIHelper.customVerticalSpace(22),
                  CustomTextField(
                      height: 64,
                      obscureText: false,
                      onChanged: () {},
                      controller: cvvController,
                      hintText: 'CVV'),
                  UIHelper.customVerticalSpace(30),
                  CustomCheckbox(
                      activeColor: AppColors.blackColor,
                      value: true,
                      onChanged: (_) {},
                      label: setAsDefaultPayment),
                  UIHelper.customVerticalSpace(30),
                  PrimaryButton(
                      onPressed: () {},
                      label: 'Add card',
                      outlined: false,
                      active: true),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.center,
                    child: RectangleBar(
                      width: 120,
                      height: 6,
                      color: AppColors.realBlack,
                    ),
                  ),
                  UIHelper.customVerticalSpace(9),
                ])),
      ),
      viewModelBuilder: () => AddNewCardVm(),
    );
  }

  Widget sizeBox(String size) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.appGrey,
          width: borderThickness,
        ),
      ),
      child: Center(
          child: Text(
        size,
        style: AppTextStyle.descrItemText,
      )),
    );
  }
}
