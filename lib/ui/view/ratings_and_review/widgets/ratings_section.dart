import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class RatingsSection extends StatelessWidget {
  const RatingsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '4.3',
              style: AppTextStyle.headline,
            ),
            UIHelper.verticalSpaceSmall,
            Text(
              '23 ratings',
              style: AppTextStyle.helperText14,
            )
          ],
        ),
        Column(
          children: [
            ratingBar(114, 12, 5),
            UIHelper.verticalSpaceSmall,
            ratingBar(40, 5, 4),
            UIHelper.verticalSpaceSmall,
            ratingBar(29, 4, 3),
            UIHelper.verticalSpaceSmall,
            ratingBar(15, 2, 2),
            UIHelper.verticalSpaceSmall,
            ratingBar(8, 0, 1),
          ],
        )
      ],
    );
  }

  Widget ratingBar(double width, int numberOfRatings, double stars) {
    return Row(
      children: [
        RatingsBar(itemCount: stars),
        UIHelper.horizontalSpaceMedium,
        SizedBox(
          width: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: width,
                  height: 8,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                    color: AppColors.saleColor,
                  )),
              Text(numberOfRatings.toString(),
                  style: AppTextStyle.normalText14Black
                      .copyWith(color: AppColors.appGrey2)),
            ],
          ),
        ),
      ],
    );
  }
}
