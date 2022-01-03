import 'package:e_commerce/ui/shared/bottom_sheets/sort_by_bs/sort_by_bs_vm.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SortByBottomSheet extends StatelessWidget {
  final padding = const EdgeInsets.only(left: 16.0, right: 16);
  final borderThickness = 0.4;
  final bool selected;
  final SheetRequest request;
  final Function(SheetResponse) completer;
  const SortByBottomSheet(
      {Key? key,
      required this.request,
      required this.completer,
      this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SortByBottomSheetVm>.reactive(
      builder: (context, model, child) => Container(
          decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34), topRight: Radius.circular(34))),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIHelper.verticalSpaceMedium,
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 60,
                      height: 6,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                        color: AppColors.appGrey,
                      )),
                ),
                UIHelper.verticalSpaceMedium,
                Align(
                    alignment: Alignment.center,
                    child: Text(sortBy, style: AppTextStyle.headline3)),
                UIHelper.customVerticalSpace(22),
                Container(
                  color: Colors.transparent,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () => model.setIndex(index),
                        child: Container(
                          color: index == model.currentIndex
                              ? AppColors.saleColor
                              : AppColors.backgroundColor,
                          child: ListTile(
                            // tileColor: AppColors.backgroundColor,
                            // selectedTileColor: AppColors.saleColor,
                            // selected: index == 2 ? true : false,
                            title: Text(
                              sortList[index],
                              style: index == model.currentIndex
                                  ? AppTextStyle.subHeadTextWhite
                                  : AppTextStyle.normalText16Black,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: sortList.length,
                  ),
                ),
                UIHelper.customVerticalSpace(30),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 120,
                      height: 6,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                        color: AppColors.realBlack,
                      )),
                ),
                UIHelper.customVerticalSpace(9),
              ])),
      viewModelBuilder: () => SortByBottomSheetVm(),
    );
  }

  Widget sizeBox(String size) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        color: AppColors.whiteColor,
        border: Border.all(
          color: AppColors.appGrey,
          width: borderThickness,
        ),
      ),
      child: Center(
          child: Text(
        size,
        style: AppTextStyle.descrItemText,
      )),
    );
  }
}
