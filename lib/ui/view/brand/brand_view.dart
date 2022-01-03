import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/color_pick/color_pick.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/tags_labels/square_tags.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/small_textfield.dart';
import 'package:e_commerce/ui/shared/smart_widgets/range_slider/slider.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'brand_vm.dart';
import 'widgets/brand_list_tile.dart';

class BrandPageView extends StatelessWidget {
  const BrandPageView({Key? key}) : super(key: key);

  static const colorList = [
    0xFF020202,
    0xFFF7F7F7,
    0xFFB82222,
    0xFFBEA9A9,
    0xFFE2BB8D,
    0xFF151867
  ];

  static const sizeList = [
    extraSmall,
    small,
    medium,
    large,
    extraLarge,
  ];

  static const brandList = [
    'adidas',
    'adidas Originals',
    'Blend',
    'Boutique Moschino',
    'Champion',
    'Diesel',
    'Jack & Jones',
    'Naf Naf',
    'Red Valentino',
    's.Oliver'
  ];
  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration =
        BoxDecoration(color: AppColors.whiteColor, boxShadow: [
      BoxShadow(
          color: AppColors.realBlack.withOpacity(0.07),
          offset: const Offset(0, 1),
          blurRadius: 4)
    ]);
    return ViewModelBuilder<BrandPageVm>.reactive(
      builder: (context, model, child) => Scaffold(
          bottomNavigationBar: Container(
            height: 104,
            width: screenWidth(context),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: AppColors.realBlack.withOpacity(0.1),
                    offset: const Offset(0, -4),
                    blurRadius: 8)
              ],
              color: AppColors.backgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UIHelper.horizontalSpaceMedium,
                PrimaryButton(
                    width: 160,
                    height: 36,
                    onPressed: () {},
                    label: discard,
                    outlined: true,
                    active: true),
                PrimaryButton(
                    width: 160,
                    height: 36,
                    onPressed: () {},
                    label: apply,
                    outlined: false,
                    active: true),
                UIHelper.horizontalSpaceMedium,
              ],
            ),
          ),
          appBar: AconAppBar(
            isSearch: false,
            bgColor: AppColors.backgroundColor,
            onBackPress: () {},
            centerTitle: brand,
            elevation: 4,
            navToFilterPage: () {},
          ),
          body: Padding(
            padding: UIHelper.customSymmetricPadding(horizontal: 16),
            child: Container(
              color: AppColors.backgroundColor,
              // height: screenHeight(context) - 104,
              child: SingleChildScrollView(
                child: SizedBox(
                  //height: screenHeight(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.customVerticalSpace(21),
                      SmallTextField(
                        label: 'Search',
                        obscureText: false,
                        isSearchField: true,
                      ),
                      UIHelper.customVerticalSpace(14),
                      SizedBox(
                        height: screenHeight(context) -
                            104 -
                            40 -
                            21 -
                            14 -
                            70 -
                            40,
                        child: ListView.separated(
                            // addSemanticIndexes: true,
                            itemBuilder: (BuildContext context, int index) {
                              return BrandListTile(
                                title: brandList[index],
                                selected: index == 1 || index == 6 || index == 9
                                    ? true
                                    : false,
                                onChanged: (_) {},
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(height: 0);
                            },
                            itemCount: brandList.length),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
      viewModelBuilder: () => BrandPageVm(),
    );
  }
}
