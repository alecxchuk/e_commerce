import 'package:e_commerce/ui/shared/bottom_sheets/password_change/password_change.form.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/textfield.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import 'password_change_vm.dart';

@FormView(fields: [
  FormTextField(name: 'oldPassword'),
  FormTextField(name: 'newPassword'),
  FormTextField(name: 'repeatNewPassword'),
])
class PasswordChangeBottomSheet extends StatelessWidget
    with $PasswordChangeBottomSheet {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  PasswordChangeBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PasswordChangeBottomSheetVm>.reactive(
      builder: (context, model, child) => Container(
          padding: UIHelper.customSymmetricPadding(horizontal: 16),
          decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34), topRight: Radius.circular(34))),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            UIHelper.verticalSpaceMedium,
            const RectangleBar(
              width: 60,
              height: 6,
            ),
            UIHelper.verticalSpaceMedium,
            Text(passwordChangeText, style: AppTextStyle.headline3),
            UIHelper.customVerticalSpace(18),
            CustomTextField(
              onChanged: () {},
              label: oldPasswordText,
              controller: oldPasswordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            UIHelper.customVerticalSpace(14),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => model.nToForgotPassword(),
                child: Text('$forgotPasswordText?',
                    style: AppTextStyle.helperText14_500),
              ),
            ),
            UIHelper.customVerticalSpace(18),
            CustomTextField(
              onChanged: () {},
              label: newPasswordText,
              controller: newPasswordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            UIHelper.customVerticalSpace(24),
            CustomTextField(
              onChanged: () {},
              label: repeatNewPasswordText,
              controller: repeatNewPasswordController,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
            ),
            UIHelper.verticalSpaceLarge,
            PrimaryButton(onPressed: () {}, label: savePasswordText),
            UIHelper.verticalSpaceLarge,
            const RectangleBar(
              color: AppColors.realBlack,
            ),
            UIHelper.customVerticalSpace(9),
          ])),
      viewModelBuilder: () => PasswordChangeBottomSheetVm(),
    );
  }
}
