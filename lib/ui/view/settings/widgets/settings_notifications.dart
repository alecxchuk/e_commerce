import 'package:e_commerce/ui/shared/dumb_widgets/switches/switch.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class SettingsNotification extends StatelessWidget {
  const SettingsNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          notificationsText,
          style: AppTextStyle.subHeadText,
        ),
        UIHelper.customVerticalSpace(10),
        listItem(sales),
        UIHelper.customVerticalSpace(0),
        listItem(newArrivalsText),
        UIHelper.customVerticalSpace(0),
        listItem(deliveryStatusChangesText),
      ],
    );
  }

  Widget listItem(String title) {
    return Row(
      children: [
        Text(title, style: AppTextStyle.descrItemText),
        const Spacer(),
        CustomSwitch(value: true, onChanged: (_) {})
      ],
    );
  }
}
