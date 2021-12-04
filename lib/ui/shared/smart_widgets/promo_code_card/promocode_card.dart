import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/smart_widgets/promo_code_card/promocode_vm.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PromoCodeCard extends StatelessWidget {
  final int offValue;
  final String offerName;
  final String promoCode;
  final int daysLeft;
  final bool hasImage;
  const PromoCodeCard(
      {Key? key,
      required this.hasImage,
      required this.offValue,
      required this.offerName,
      required this.promoCode,
      required this.daysLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PromoCodeVm>.reactive(
        viewModelBuilder: () => PromoCodeVm(),
        builder: (context, model, child) => Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: UIHelper.smallBorderRadius,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.realBlack.withOpacity(0.08),
                      offset: const Offset(0, 1),
                      blurRadius: 25)
                ],
                color: AppColors.backgroundColor,
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(beachGirl), fit: BoxFit.cover),
                      borderRadius: UIHelper.smallBorderRadius.copyWith(
                        topRight: const Radius.circular(0),
                        bottomRight: const Radius.circular(0),
                      ),
                      color: const Color.fromRGBO(155, 155, 155, 1),
                      gradient: hasImage
                          ? const LinearGradient(
                              begin: Alignment(6.123234262925839e-17, 1),
                              end: Alignment(-1, 6.123234262925839e-17),
                              colors: [
                                  Color.fromRGBO(191, 24, 14, 1),
                                  Color.fromRGBO(235, 0, 27, 1)
                                ])
                          : null,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$offValue',
                            style: hasImage
                                ? AppTextStyle.headline
                                : AppTextStyle.headlineWhite,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '%',
                                style: hasImage
                                    ? AppTextStyle.boldText14
                                    : AppTextStyle.boldText14White,
                              ),
                              Text(
                                'off',
                                style: hasImage
                                    ? AppTextStyle.boldText14
                                    : AppTextStyle.boldText14White,
                              )
                            ],
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width - 96,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14.0, right: 14),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            child: SizedBox(
                              height: 20,
                              child: Text(
                                offerName,
                                style: AppTextStyle.descrItemText,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 42,
                            child: SizedBox(
                              height: 11,
                              child: Text(
                                promoCode,
                                style: AppTextStyle.normalText11Black,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 0,
                            child: SizedBox(
                              height: 11,
                              child: Text(
                                '$daysLeft days remaining',
                                style: AppTextStyle.helperText,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 30,
                              right: 0,
                              child: PrimaryButton(
                                onPressed: () {},
                                label: 'Apply',
                                outlined: false,
                                active: true,
                                width: 93,
                                height: 36,
                              )
                              // Container(
                              //     width: 93,
                              //     height: 36,
                              //     decoration: BoxDecoration(
                              //       borderRadius: UIHelper.bigBorderRadius,
                              //       boxShadow: [
                              //         BoxShadow(
                              //             color: AppColors.reddishColor
                              //                 .withOpacity(0.25),
                              //             offset: const Offset(0, 4),
                              //             blurRadius: 8)
                              //       ],
                              //       color: Color.fromRGBO(219, 48, 34, 1),
                              //     )),
                              )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
