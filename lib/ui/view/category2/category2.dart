import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'category2_vm.dart';

class Categories2Page extends StatelessWidget {
  final PageController controller;
  const Categories2Page({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Categories2PageVm>.reactive(
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        //margin: const EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PrimaryButton(
                    onPressed: () {},
                    label: 'View all items',
                    outlined: false,
                    active: true),
              ),
              UIHelper.verticalSpaceMedium,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Choose category',
                    style: AppTextStyle.helperText14_500),
              ),
              UIHelper.verticalSpaceLarge,
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: categoriesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        onTap: () => controller.animateToPage(2,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 40),
                        title: Text(categoriesList[index],
                            style: AppTextStyle.normalText16Black));
                  },
                  // The separators
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1,
                      thickness: 0.4,
                      color: AppColors.appGrey.withOpacity(0.25),
                    );
                  }),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => Categories2PageVm(),
    );
  }
}
