import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/buttons/round_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/dropdowns/dropdown.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/ui/shared/smart_widgets/horizontal_product_block/horiz_prod_block.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'product_card_vm.dart';

class ProductCardView extends HookWidget {
  const ProductCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scrollController = useScrollController();

    return ViewModelBuilder<ProductCardViewVm>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AconAppBar(
            bgColor: AppColors.whiteColor,
            onBackPress: () {},
            centerTitle: 'Short dress',
            isSearch: false,
            isShare: true,
          ),
          body: SizedBox(
            height: screenHeight(context),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 413,
                      child: Scrollbar(
                          controller: _scrollController,
                          child: ListView.separated(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Image.asset(
                                shortDressGirl,
                                fit: BoxFit.contain,
                              );
                            },
                            itemCount: 3,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return UIHelper.horizontalSpaceSmall;
                            },
                          )),
                    ),
                    UIHelper.verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        UIHelper.horizontalSpaceMedium,
                        const Flexible(child: CustomDropdown(height: 40)),
                        UIHelper.horizontalSpaceMedium,
                        const Flexible(child: CustomDropdown(height: 40)),
                        UIHelper.horizontalSpaceMedium,
                        RoundButton(
                            width: 36,
                            elevation: 1,
                            onPressed: () {},
                            fillColor: AppColors.whiteColor,
                            iconColor: AppColors.appGrey,
                            iconName: favorite),
                        UIHelper.horizontalSpaceMedium,
                      ],
                    ),
                    UIHelper.customVerticalSpace(22),
                    Row(
                      children: [
                        UIHelper.horizontalSpaceMedium,
                        Text(
                          'H&M',
                          style: AppTextStyle.headline2,
                        ),
                        const Spacer(),
                        Text(
                          '\$19.99',
                          style: AppTextStyle.headline2,
                        ),
                        UIHelper.horizontalSpaceMedium,
                      ],
                    ),
                    Container(
                        padding:
                            UIHelper.customSymmetricPadding(horizontal: 16),
                        child: Text('Short Black Dress',
                            style: AppTextStyle.helperText)),
                    UIHelper.verticalSpaceSmall,
                    Padding(
                      padding: UIHelper.customSymmetricPadding(horizontal: 16),
                      child: GestureDetector(
                          onTap: () => model.nToRatingsReview(),
                          child: const RatingsBar(
                              numberOfRatings: 10, itemCount: 4)),
                    ),
                    UIHelper.verticalSpaceMedium,
                    Container(
                      padding: UIHelper.customSymmetricPadding(horizontal: 16),
                      child: Text(
                        'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.',
                        style: AppTextStyle.normalText14Black
                            .copyWith(height: 1.5),
                        // textHeightBehavior: TextHeightBehavior(),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    UIHelper.verticalSpaceSmall,
                    Container(
                      padding: UIHelper.customSymmetricPadding(horizontal: 16),
                      height: 112,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.realBlack.withOpacity(0.1),
                                offset: const Offset(0, -4),
                                blurRadius: 4)
                          ]),
                      child: Center(
                        child: PrimaryButton(
                            height: 48,
                            onPressed: () {},
                            label: 'Add to cart',
                            outlined: false,
                            active: true),
                      ),
                    ),
                    UIHelper.verticalSpaceSmall,
                    ListTile(
                      title: Text(
                        'Shipping Info',
                        style: AppTextStyle.normalText16Black,
                      ),
                      trailing: SizedBox(
                        width: 12,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            forwardIcon,
                            size: 12,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      title: Text(
                        'Support',
                        style: AppTextStyle.normalText16Black,
                      ),
                      trailing: SizedBox(
                        width: 12,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            forwardIcon,
                            size: 12,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                    const Divider(),
                    // UIHelper.customVerticalSpace(33),
                    const Flexible(
                      child: const ProductBlockHorizontal(
                        title: youCanLikeThis,
                        titleHelper: '12 Items',
                      ),
                    ),
                  ]),
            ),
          )),
      viewModelBuilder: () => ProductCardViewVm(),
    );
  }
}
