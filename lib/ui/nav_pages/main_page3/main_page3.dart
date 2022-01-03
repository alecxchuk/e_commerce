import 'package:e_commerce/ui/shared/smart_widgets/horizontal_product_block/horiz_prod_block.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_page3_vm.dart';

class MainPage3 extends StatelessWidget {
  const MainPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainPag3Vm>.reactive(
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
                      jeanSpecsGirl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 24,
                    right: 14,
                    child: Text('New collection',
                        style: AppTextStyle.headlineWhite),
                  )
                ]),
                SizedBox(
                  height: 375,
                  child: Row(
                    children: [
                      SizedBox(
                        width: screenWidthPercentage(context, percentage: 0.5),
                        height: 375,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                height: 375 / 2,
                                decoration: const BoxDecoration(
                                  color: AppColors.whiteColor,
                                ),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        'Summer\nsale',
                                        style: AppTextStyle.headlineSale,
                                      ),
                                    )),
                              ),
                            ),
                            Flexible(
                              child: Stack(children: [
                                SizedBox(
                                  width: screenWidthPercentage(context,
                                      percentage: 0.5),
                                  height: 375 / 2,
                                  child: Image.asset(
                                    asianSpecsGirl,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text('Black',
                                          style: AppTextStyle.headlineWhite),
                                    ))
                              ]),
                            ),
                          ],
                        ),
                      ),
                      Stack(children: [
                        SizedBox(
                          width:
                              screenWidthPercentage(context, percentage: 0.5),
                          height: 375,
                          child: Image.asset(
                            yellowHoodieGuy,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 150,
                          right: 15,
                          child: Text(
                            'Men\'s\nHoddies',
                            style: AppTextStyle.headlineWhite,
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => MainPag3Vm(),
    );
  }
}
