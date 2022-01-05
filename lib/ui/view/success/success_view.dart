import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'success_vm.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SuccessVm>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => SuccessVm(),
    );
  }
}
