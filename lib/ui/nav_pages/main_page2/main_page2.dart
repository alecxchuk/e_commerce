import 'package:e_commerce/ui/shared/smart_widgets/horizontal_product_block/horiz_prod_block.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_page2_vm.dart';

class MainPage2 extends StatelessWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainPage2Vm>.reactive(
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
                      mainPage2Banner,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 24,
                    left: 14,
                    child: Text(streetClothes, style: AppTextStyle.white34),
                  )
                ]),
                UIHelper.customVerticalSpace(33),
                const ProductBlockHorizontal(
                  subTitle: superSummerSale,
                  title: sale,
                ),
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
      viewModelBuilder: () => MainPage2Vm(),
    );
  }
}
