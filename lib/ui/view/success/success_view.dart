import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'success_vm.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ViewModelBuilder<SuccessVm>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SizedBox(
          width: screenWidth(context),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  successGirl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 8,
                left: (screenWidth(context) - 134) / 2,
                // alignment: Alignment.bottomCenter,
                child: const RectangleBar(
                  color: AppColors.blackColor,
                  width: 134,
                ),
              ),
              Align(
                  // top: 50,
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      UIHelper.customVerticalSpace(80),
                      Text(successText + '!', style: AppTextStyle.headline),
                      UIHelper.verticalSpaceMedium,
                      SizedBox(
                        width: 262,
                        child: Text(orderSuccessfulMessage,
                            style:
                                AppTextStyle.subHeadText.copyWith(height: 1.5)),
                      ),
                      UIHelper.verticalSpaceMedium,
                      PrimaryButton(
                        onPressed: () {},
                        label: continueShipping,
                        width: 160,
                        height: 36,
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SuccessVm(),
    );
  }
}
