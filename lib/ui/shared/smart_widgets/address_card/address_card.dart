import 'package:e_commerce/ui/shared/dumb_widgets/checkbox/checkbox.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String customerName;
  final String address;
  const AddressCard(
      {Key? key, required this.customerName, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: UIHelper.smallBorderRadius,
        boxShadow: [
          BoxShadow(
              color: AppColors.realBlack.withOpacity(0.08),
              offset: const Offset(0, 1),
              blurRadius: 25)
        ],
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(28.0, 18.0, 23.0, 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      customerName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.descrItemText,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Text(editText, style: AppTextStyle.saleText14_500))
              ],
            ),
            UIHelper.verticalSpaceSmall,
            Flexible(
              child: SizedBox(
                width: 240,
                //height: 50,
                child: Text(
                  address,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textHeightBehavior:
                      const TextHeightBehavior(applyHeightToFirstAscent: false),
                  style: AppTextStyle.normalText14Black.copyWith(height: 1.5),
                ),
              ),
            ),
            UIHelper.customVerticalSpace(14),
            CustomCheckbox(
              activeColor: AppColors.blackColor,
              value: true,
              onChanged: (_) {},
              label: useShipping,
            )
          ],
        ),
      ),
    );
  }
}
