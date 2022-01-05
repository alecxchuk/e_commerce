import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/smart_widgets/promo_code_card/promocode_vm.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PromoCodeBottomSheet extends StatelessWidget {
  final padding = const EdgeInsets.only(left: 16.0, right: 16);
  final borderThickness = 0.4;

  final SheetRequest request;
  final Function(SheetResponse) completer;
  const PromoCodeBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final spacing = (MediaQuery.of(context).size.width - 332) / 2;
    return ViewModelBuilder<PromoCodeVm>.reactive(
      builder: (context, model, child) => Container(
          decoration: const BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(34), topRight: Radius.circular(34))),
          //height: 400,
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
                    child: Text(selectPrice, style: AppTextStyle.headline3)),
                UIHelper.customVerticalSpace(22),
                Padding(
                  padding: padding,
                  child: Wrap(
                    runSpacing: 24.0,
                    children: [
                      sizeBox(extraSmall),
                      UIHelper.customHorizontalSpace(spacing),
                      sizeBox(small),
                      UIHelper.customHorizontalSpace(spacing),
                      sizeBox(medium),
                      sizeBox(large),
                      UIHelper.customHorizontalSpace(spacing),
                      sizeBox(extraLarge),
                    ],
                  ),
                ),
                UIHelper.customVerticalSpace(24),
                Divider(color: AppColors.appGrey, thickness: borderThickness),
                UIHelper.verticalSpaceMedium,
                Padding(
                  padding: padding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(sizeInfo, style: AppTextStyle.subHeadText),
                      const Icon(
                        forwardIcon,
                        size: 16,
                      )
                    ],
                  ),
                ),
                UIHelper.verticalSpaceMedium,
                Divider(color: AppColors.appGrey, thickness: borderThickness),
                UIHelper.customVerticalSpace(28),
                Padding(
                  padding: padding,
                  child: PrimaryButton(
                      onPressed: () {},
                      label: addToFavorites,
                      outlined: false,
                      active: true),
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
      viewModelBuilder: () => PromoCodeVm(),
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
