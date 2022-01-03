import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/smart_widgets/horizontal_product_block/horiz_prod_block.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';

import 'main_page_vm.dart';

class MainPage1 extends StatelessWidget {
  const MainPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return ViewModelBuilder<MainPage1Vm>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          color: AppColors.backgroundColor,
          //height: screenHeight(context),
          width: screenWidth(context),
          child: SingleChildScrollView(
            key: const PageStorageKey('value'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  SizedBox(
                    width: screenWidth(context),
                    child: Image.asset(
                      mainPage1Banner,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 32,
                    left: 14,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(fashionSale.split(' ').join('\n'),
                            style: AppTextStyle.white48),
                        UIHelper.verticalSpaceMedium,
                        PrimaryButton(
                            width: 160,
                            height: 36,
                            onPressed: () {},
                            label: checkText,
                            outlined: false,
                            active: true)
                      ],
                    ),
                  )
                ]),
                UIHelper.customVerticalSpace(33),
                const ProductBlockHorizontal(
                  subTitle: neverSeenBefore + '!',
                  title: newText,
                ),
                UIHelper.verticalSpaceMedium
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => MainPage1Vm(),
    );
  }
}
