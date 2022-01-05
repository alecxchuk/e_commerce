import 'package:e_commerce/ui/view/success/success_vm.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SuccessView2 extends StatelessWidget {
  const SuccessView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SuccessVm>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => SuccessVm(),
    );
  }
}
