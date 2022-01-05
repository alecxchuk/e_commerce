import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'add_shipping_address_vm.dart';

class AddShippingAddress extends StatelessWidget {
  const AddShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddShippingAddressVm>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => AddShippingAddressVm(),
    );
  }
}
