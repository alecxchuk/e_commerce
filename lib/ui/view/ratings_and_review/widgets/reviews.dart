import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: screenWidth(context),
          padding: const EdgeInsets.only(left: 16),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: UIHelper.customSymmetricPadding(
                    vertical: 24, horizontal: 24),
                // height: 297,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.realBlack.withOpacity(0.05),
                        offset: const Offset(0, 1),
                        blurRadius: 25)
                  ],
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Helen Moore',
                      style: AppTextStyle.boldText14,
                    ),
                    UIHelper.verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const RatingsBar(itemCount: 4),
                        Text(
                          'June 5,2021',
                          style: AppTextStyle.helperText,
                        )
                      ],
                    ),
                    UIHelper.customVerticalSpace(11),
                    Text(
                      'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 5\'7" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.',
                      style:
                          AppTextStyle.normalText14Black.copyWith(height: 1.5),
                    ),
                    UIHelper.verticalSpaceMedium,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Helpful',
                          style: AppTextStyle.helperText14,
                        ),
                        UIHelper.customHorizontalSpace(12),
                        const Icon(
                          thumbsUpIcon,
                          color: AppColors.appGrey,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Positioned(
                top: -16,
                left: -16,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(turtleNeckGirl),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return UIHelper.verticalSpaceLarge;
      },
    );
  }
}
