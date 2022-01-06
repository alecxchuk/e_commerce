import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/ui_bars/rectangular.dart';
import 'package:e_commerce/ui/view/success/success_vm.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

class SuccessView2 extends StatelessWidget {
  const SuccessView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ViewModelBuilder<SuccessVm>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Padding(
          padding: UIHelper.customSymmetricPadding(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(successBags),
              UIHelper.customVerticalSpace(49),
              Text(successText + '!', style: AppTextStyle.headline),
              UIHelper.verticalSpaceMedium,
              SizedBox(
                width: 225,
                child: Text(orderSuccessfulMessage,
                    style:
                        AppTextStyle.normalText14Black.copyWith(height: 1.5)),
              ),
              UIHelper.customVerticalSpace(163),
              PrimaryButton(onPressed: () {}, label: continueShipping),
              UIHelper.customVerticalSpace(45),
              Align(
                alignment: Alignment.bottomCenter,
                child: const RectangleBar(
                  color: AppColors.blackColor,
                ),
              ),
              UIHelper.verticalSpaceSmall
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SuccessVm(),
    );
  }
}
