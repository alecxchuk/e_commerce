import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/ui/shared/dialogs/popup.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final builders = {
    DialogType.popup: (BuildContext context, DialogRequest request,
            Function(DialogResponse) completer) =>
        PopupDialog(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
