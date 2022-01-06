import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/dropdowns/dropdown.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/textfield.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/add_shipping_address/add_shipping_address_view.form.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'add_shipping_address_vm.dart';

@FormView(fields: [
  FormTextField(name: 'fullname'),
  FormTextField(name: 'address'),
  FormTextField(name: 'city'),
  FormTextField(name: 'state'),
  FormTextField(name: 'zip'),
  FormTextField(name: 'country'),
])
class AddShippingAddress extends StatelessWidget with $AddShippingAddress {
  AddShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddShippingAddressVm>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AconAppBar(
            bgColor: AppColors.whiteColor,
            onBackPress: () {},
            centerTitle: addingShippingAddressText,
            isSearch: false,
          ),
          body: SingleChildScrollView(
              child: Padding(
            padding:
                UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                CustomTextField(
                  label: 'Full name',
                  obscureText: false,
                  onChanged: () {},
                  controller: fullnameController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                UIHelper.customVerticalSpace(20),
                CustomTextField(
                  label: 'Address',
                  obscureText: false,
                  onChanged: () {},
                  controller: addressController,
                  keyboardType: TextInputType.streetAddress,
                  textInputAction: TextInputAction.next,
                ),
                UIHelper.customVerticalSpace(20),
                CustomTextField(
                  label: 'City',
                  obscureText: false,
                  onChanged: () {},
                  controller: cityController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                UIHelper.customVerticalSpace(20),
                CustomTextField(
                  label: 'State/Province/Region',
                  obscureText: false,
                  onChanged: () {},
                  controller: zipController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                UIHelper.customVerticalSpace(20),
                CustomTextField(
                  label: 'Zip Code(Postal Code)',
                  obscureText: false,
                  onChanged: () {},
                  controller: countryController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                ),
                UIHelper.customVerticalSpace(20),
                // CustomDropdown(
                //   height: 52,
                // ),
                // TODO IMPLEMENT DROPDOWN
                CustomTextField(
                  label: 'Country',
                  obscureText: false,
                  onChanged: () {},
                  controller: countryController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                ),
                UIHelper.customVerticalSpace(45),
                PrimaryButton(
                    onPressed: () {},
                    label: 'Save address',
                    outlined: false,
                    active: true)
              ],
            ),
          ))),
      viewModelBuilder: () => AddShippingAddressVm(),
    );
  }
}
