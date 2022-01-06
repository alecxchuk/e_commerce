import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 32,
        backgroundImage: AssetImage(turtleNeckGirl),
      ),
      title: Text(
        'Matilda Brown',
        style: AppTextStyle.headline3,
      ),
      subtitle: Text(
        'matildabrown@mail.com',
        style: AppTextStyle.helperText14_500,
      ),
    );
  }
}
