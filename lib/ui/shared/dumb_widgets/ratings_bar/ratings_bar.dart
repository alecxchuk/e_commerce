import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingsBar extends StatelessWidget {
  final int? numberOfRatings;
  final double itemCount;
  final double? itemSize;
  final double itemPadding;
  const RatingsBar(
      {Key? key,
      this.numberOfRatings,
      required this.itemCount,
      this.itemSize,
      this.itemPadding = 4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: numberOfRatings != null
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        RatingBar(
          initialRating: itemCount,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: itemSize ?? 14,
          itemPadding: EdgeInsets.only(right: itemPadding),
          // itemBuilder: (context, _) => SvgPicture.asset(starIcon),
          onRatingUpdate: (rating) {
            print(rating);
          },
          ratingWidget: RatingWidget(
            full: SvgPicture.asset(starIcon),
            empty: SvgPicture.asset(emptyStarIcon),
            half: SvgPicture.asset(starIcon),
          ),
        ),
        UIHelper.customHorizontalSpace(numberOfRatings != null ? 4 : 0),
        Visibility(
          visible: numberOfRatings != null,
          child: Text(
            '($numberOfRatings )',
            style: AppTextStyle.helperText10, //.copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }
}
