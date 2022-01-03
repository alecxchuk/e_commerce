import 'package:e_commerce/ui/shared/bottom_sheets/review_bs/review_bs.form.dart';
import 'package:e_commerce/ui/shared/bottom_sheets/review_bs/review_bs_vm.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/textfield.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@FormView(fields: [
  FormTextField(name: 'review'),
])
class ReviewsBottomSheet extends StatelessWidget with $ReviewsBottomSheet {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  ReviewsBottomSheet({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReviewBottomSheetVm>.reactive(
      builder: (context, model, child) => SingleChildScrollView(
        child: Container(
            height: screenHeightPercentage(context, percentage: 0.8),
            width: screenWidth(context),
            padding: UIHelper.customSymmetricPadding(horizontal: 16),
            decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34))),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                      child:
                          Text(whatsYourRate, style: AppTextStyle.headline3)),
                  UIHelper.customVerticalSpace(22),
                  const Align(
                    alignment: Alignment.center,
                    child:
                        RatingsBar(itemCount: 0, itemSize: 36, itemPadding: 24),
                  ),
                  UIHelper.customVerticalSpace(30),
                  SizedBox(
                    width: screenWidthPercentage(context, percentage: 0.6),
                    child: Text(
                      pleaseShareOpinion,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.headline3,
                    ),
                  ),
                  UIHelper.customVerticalSpace(18),
                  CustomTextField(
                    height: 154,
                    hintText: yourReview,
                    obscureText: false,
                    onChanged: () {},
                    controller: reviewController,
                    maxLines: 10,
                  ),
                  UIHelper.customVerticalSpace(40),
                  Align(
                      alignment: Alignment.centerLeft,
                      child:
                          // Figma Flutter Generator PhotoWidget - RECTANGLE
                          SizedBox(
                        width: 104,
                        height: 104,
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: 0.2,
                              child: Container(
                                width: 104,
                                height: 104,
                                decoration: BoxDecoration(
                                  borderRadius: UIHelper.extraSmallBorderRadius,
                                  boxShadow: [
                                    BoxShadow(
                                        color: AppColors.realBlack
                                            .withOpacity(0.16),
                                        offset: const Offset(0, 1),
                                        blurRadius: 16)
                                  ],
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 16,
                              left: 26,
                              child: RoundButton(
                                  width: 52,
                                  height: 52,
                                  onPressed: () {},
                                  fillColor: AppColors.saleColor,
                                  iconColor: AppColors.whiteColor,
                                  iconName: camera),
                            ),
                            Positioned(
                                top: 80,
                                left: 6,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    addYourPhotos,
                                    style: AppTextStyle.baseStyle(
                                        fontSize: 11,
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ))
                          ],
                        ),
                      )),
                  UIHelper.customVerticalSpace(44),
                  PrimaryButton(
                      onPressed: () {},
                      label: sendReview,
                      outlined: false,
                      active: true),
                  const Spacer(),
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
      ),
      viewModelBuilder: () => ReviewBottomSheetVm(),
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
          width: 0.4,
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
