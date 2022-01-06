import 'package:e_commerce/ui/shared/dumb_widgets/textfields/textfield.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/settings/settings.form.dart';
import 'package:e_commerce/ui/view/settings/settings_vm.dart';
import 'package:e_commerce/ui/view/settings/widgets/settings_notifications.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(fields: [
  FormTextField(name: 'fullname'),
  FormTextField(name: 'dob'),
  FormTextField(name: 'password'),
])
class SettingsView extends StatelessWidget with $SettingsView {
  SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsVm>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AconAppBar(
            bgColor: AppColors.backgroundColor,
            headlineText: settingsText,
            onBackPress: () {},
          ),
          body: SingleChildScrollView(
              child: Padding(
            padding: UIHelper.customSymmetricPadding(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.customVerticalSpace(20),
                Text(
                  personalInformationText,
                  style: AppTextStyle.subHeadText,
                ),
                UIHelper.customVerticalSpace(20),
                CustomTextField(
                  onChanged: () {},
                  controller: fullnameController,
                  label: 'Full name',
                ),
                UIHelper.customVerticalSpace(24),
                CustomTextField(
                  onChanged: () {},
                  controller: dobController,
                  label: 'Date of Birth',
                ),
                UIHelper.customVerticalSpace(52),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      passwordText,
                      style: AppTextStyle.subHeadText.copyWith(height: 1.5),
                    ),
                    GestureDetector(
                      onTap: () => model.showChangePasswordBottomSheet(),
                      child: Text(
                        changeText,
                        style: AppTextStyle.helperText14.copyWith(height: 1.5),
                      ),
                    )
                  ],
                ),
                UIHelper.verticalSpaceMedium,
                CustomTextField(
                  onChanged: () {},
                  controller: passwordController,
                  obscureText: true,
                  label: 'Password',
                ),
                UIHelper.customVerticalSpace(52),
                SettingsNotification()
              ],
            ),
          ))),
      viewModelBuilder: () => SettingsVm(),
    );
  }
}
