import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/color_pick/color_pick.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/tags_labels/square_tags.dart';
import 'package:e_commerce/ui/shared/smart_widgets/range_slider/slider.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'filters_vm.dart';

class FilterPageView extends StatelessWidget {
  const FilterPageView({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration =
        BoxDecoration(color: AppColors.whiteColor, boxShadow: [
      BoxShadow(
          color: AppColors.realBlack.withOpacity(0.07),
          offset: const Offset(0, 1),
          blurRadius: 4)
    ]);

    return ViewModelBuilder<FilterPageVm>.reactive(
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
            centerTitle: filters,
            elevation: 4,
            navToFilterPage: () {},
          ),
          body: Container(
            color: AppColors.backgroundColor,
            height: screenHeight(context) - 104,
            child: SingleChildScrollView(
              child: SizedBox(
                //height: screenHeight(context),
                child: Stack(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.customVerticalSpace(14),
                      Padding(
                        padding:
                            UIHelper.customSymmetricPadding(horizontal: 16),
                        child: Text(
                          priceRange,
                          style: AppTextStyle.subHeadText,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall,
                      Container(
                          height: 88,
                          decoration: decoration,
                          child: Padding(
                              padding: UIHelper.customSymmetricPadding(
                                  horizontal: 16),
                              child: const PriceRangeSlider())),
                      UIHelper.customVerticalSpace(14),
                      Padding(
                        padding:
                            UIHelper.customSymmetricPadding(horizontal: 16),
                        child: Text(
                          colors,
                          style: AppTextStyle.subHeadText,
                        ),
                      ),
                      UIHelper.customVerticalSpace(14),
                      Container(
                          height: 92,
                          width: screenWidth(context),
                          decoration: decoration,
                          child: Padding(
                            padding:
                                UIHelper.customSymmetricPadding(horizontal: 16),
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 92,
                                    child: Center(
                                      child: ColorPicker(
                                          color: Color(colorList[index]),
                                          selected: index == 0),
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return UIHelper.horizontalSpaceMedium;
                                },
                                itemCount: colorList.length),
                          )),
                      UIHelper.customVerticalSpace(14),
                      Padding(
                        padding:
                            UIHelper.customSymmetricPadding(horizontal: 16),
                        child: Text(
                          sizes,
                          style: AppTextStyle.subHeadText,
                        ),
                      ),
                      UIHelper.customVerticalSpace(14),
                      Container(
                          decoration: decoration,
                          height: 88,
                          width: screenWidth(context),
                          child: Padding(
                            padding:
                                UIHelper.customSymmetricPadding(horizontal: 16),
                            child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 88,
                                    child: Center(
                                      child: CustomSquareTag(
                                          tagText: sizeList[index],
                                          outlined: index == 1 || index == 2
                                              ? false
                                              : true,
                                          width: 40),
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return UIHelper.horizontalSpaceMedium;
                                },
                                itemCount: sizeList.length),
                          )),
                      UIHelper.customVerticalSpace(14),
                      Padding(
                        padding:
                            UIHelper.customSymmetricPadding(horizontal: 16),
                        child: Text(
                          category,
                          style: AppTextStyle.subHeadText,
                        ),
                      ),
                      UIHelper.customVerticalSpace(14),
                      Container(
                        decoration: decoration,
                        height: 140,
                        width: screenWidth(context),
                        child: Padding(
                          padding:
                              UIHelper.customSymmetricPadding(horizontal: 16),
                          child: Wrap(
                            runAlignment: WrapAlignment.center,
                            runSpacing: 12,
                            children: [
                              const CustomSquareTag(
                                  tagText: all, outlined: false),
                              UIHelper.customHorizontalSpace(22),
                              const CustomSquareTag(
                                  tagText: women, outlined: true),
                              UIHelper.customHorizontalSpace(22),
                              const CustomSquareTag(
                                  tagText: men, outlined: true),
                              const CustomSquareTag(
                                  tagText: boys, outlined: true),
                              UIHelper.customHorizontalSpace(22),
                              const CustomSquareTag(
                                  tagText: girls, outlined: true),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => model.nToBrands(),
                        child: ListTile(
                          title: Text(
                            brand,
                            style: AppTextStyle.subHeadText,
                          ),
                          subtitle: Text(
                            'adidas Originals, Jack & Jones, Oliver',
                            style: AppTextStyle.helperText,
                          ),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          )),
      viewModelBuilder: () => FilterPageVm(),
    );
  }
}
