import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'payment_method_vm.dart';

class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PaymentMethodVm>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => PaymentMethodVm(),
    );
  }
}
