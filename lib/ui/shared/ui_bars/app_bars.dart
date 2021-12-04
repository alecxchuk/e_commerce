import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AconAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? headlineText;
  final String? centerTitle;
  final Color bgColor;
  const AconAppBar(
      {Key? key, required this.bgColor, this.headlineText, this.centerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: bgColor),
      elevation: 0,
      centerTitle: true,
      title: centerTitle != null
          ? Text(
              centerTitle!,
              textAlign: TextAlign.start,
              style: AppTextStyle.headline3,
            )
          : null,
      bottom: headlineText != null
          ? PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    headlineText!,
                    textAlign: TextAlign.start,
                    style: AppTextStyle.headline,
                  ),
                ),
              ),
              preferredSize: const Size.fromHeight(70))
          : null,
      leading: const Icon(
        backIcon,
        color: AppColors.blackColor,
        size: 20,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(headlineText != null ? 100 : 60);
}
