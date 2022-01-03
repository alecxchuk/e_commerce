import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'slider_vm.dart';

class PriceRangeSlider extends StatelessWidget {
  const PriceRangeSlider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PriceRangeViewModel>.reactive(
        builder: (context, model, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '\$ ${model.currentRangeValues.start.round().toString()}',
                      style: AppTextStyle.normalText14Black,
                    ),
                    const Spacer(),
                    Text(
                        '\$ ${model.currentRangeValues.end.round().toString()}',
                        style: AppTextStyle.normalText14Black)
                  ],
                ),
                UIHelper.verticalSpaceExtraSmall,
                SliderTheme(
                  data: SliderThemeData(
                      trackHeight: 3,
                      overlayShape: SliderComponentShape.noOverlay,
                      showValueIndicator: ShowValueIndicator.never),
                  child: RangeSlider(
                    values: model.currentRangeValues,
                    activeColor: AppColors.saleColor,
                    inactiveColor: AppColors.appGrey,
                    min: 0,
                    max: 500,
                    divisions: 10,
                    labels: RangeLabels(
                      model.currentRangeValues.start.round().toString(),
                      model.currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      model.setRangeValues(values);
                    },
                  ),
                ),
              ],
            ),
        viewModelBuilder: () => PriceRangeViewModel());
  }
}
