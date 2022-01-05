import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'shipping_address_vm.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ShippingAddressVm>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => ShippingAddressVm(),
    );
  }
}
