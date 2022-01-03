import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/ratings_and_review/widgets/ratings_section.dart';
import 'package:e_commerce/ui/view/ratings_and_review/widgets/reviews.dart';
import 'package:e_commerce/ui/view/ratings_and_review/widgets/reviews_header.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ratings_and_review_vm.dart';

class RatingsAndReviewView extends StatelessWidget {
  const RatingsAndReviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RatingsAndReviewVm>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: PrimaryButton(
          onPressed: () => model.writeReview(),
          label: 'Write a review',
          outlined: false,
          active: true,
          edit: true,
          height: 36,
          width: 128,
        ),
        appBar: AconAppBar(
          bgColor: AppColors.backgroundColor,
          onBackPress: () {},
          headlineText: 'Ratings&Reviews',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                UIHelper.customVerticalSpace(40),
                const RatingsSection(),
                UIHelper.customVerticalSpace(34),
                const ReviewsHeader(),
                UIHelper.customVerticalSpace(34),
                const ReviewsSection(),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => RatingsAndReviewVm(),
    );
  }
}
