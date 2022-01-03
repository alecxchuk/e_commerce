import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/textfield.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'forgot_password.form.dart';
import 'forgot_password_vm.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
])
class ForgotPasswordView extends StatelessWidget with $ForgotPasswordView {
  final appBarHeight = 170;

  ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AconAppBar(
          headlineText: forgotPasswordText,
          bgColor: AppColors.backgroundColor,
          onBackPress: () => model.nToLogin(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: screenHeight(context) - appBarHeight,
              child: Column(
                children: [
                  UIHelper.customVerticalSpace(87),
                  Text(enterYourEmailAddress,
                      style: AppTextStyle.descrItemText),
                  UIHelper.verticalSpaceMedium,
                  CustomTextField(
                    label: emailText,
                    obscureText: false,
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (input) {
                      model.checkEmail();
                    },
                  ),
                  UIHelper.verticalSpaceExtraSmall,
                  Visibility(
                    visible: model.emailErrorMessage.isNotEmpty &&
                        model.validateForm,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            model.emailErrorMessage,
                            style: AppTextStyle.errorText,
                          ),
                        )),
                  ),
                  UIHelper.customVerticalSpace(55),

                  PrimaryButton(
                      onPressed: () => model.restPassword(),
                      label: sendText.toUpperCase(),
                      outlined: false,
                      active: true),
                  //UIHelper.verticalSpaceLarge,
                  const Spacer(),

                  const RectangleBar(
                    color: AppColors.realBlack,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ForgotPasswordViewModel(),
    );
  }
}
