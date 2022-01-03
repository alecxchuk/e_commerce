import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class PopupDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  const PopupDialog({Key? key, required this.request, required this.completer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        child: _BasicDialogContent(request: request, completer: completer));
  }
}

class _BasicDialogContent extends StatelessWidget {
  const _BasicDialogContent({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  final DialogRequest request;
  final Function(DialogResponse dialogResponse) completer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        boxShadow: [
          BoxShadow(
              color: AppColors.realBlack.withOpacity(0.14),
              offset: const Offset(0, 1),
              blurRadius: 25)
        ],
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UIHelper.customVerticalSpace(20),
          InkWell(
              child:
                  Text(addToFavorite, style: AppTextStyle.normalText11Black)),
          UIHelper.customVerticalSpace(17),
          const Divider(),
          UIHelper.customVerticalSpace(17),
          Text(deleteFromFavorite, style: AppTextStyle.normalText11Black),
          UIHelper.customVerticalSpace(19),
        ],
      ),
    );
  }
}
