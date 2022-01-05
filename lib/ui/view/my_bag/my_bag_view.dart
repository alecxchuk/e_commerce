import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/textfields/small_textfield.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_bag/bag_list_item.dart';
import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/my_bag/my_bag_view.form.dart';
import 'package:e_commerce/ui/view/my_bag/my_bag_vm.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

@FormView(
  fields: [
    FormTextField(name: 'promoCode'),
  ],
)
class MyBagView extends StatelessWidget with $MyBagView {
  MyBagView({Key? key}) : super(key: key);
  lll(model) {
    print('lol');
    model.showPromoCodeBottomSheet();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyBagVm>.reactive(
      // TODO PROMOCODE VM
      // onModelReady: (model) => promoCodeFocusNode.addListener(() async {
      //   await lll(model);
      // }),
      builder: (context, model, child) => Scaffold(
        appBar: AconAppBar(
          bgColor: AppColors.backgroundColor,
          onBackPress: () {},
          headlineText: 'My Bag',
        ),
        body: Padding(
          padding:
              UIHelper.customSymmetricPadding(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        // onTap: () => model.navToProductCardView(),
                        child: BagProductCard(
                          // favoriteClick: () =>
                          //     model.showSelectSizeBottomSheet(),
                          // navToProductCardView: () =>
                          //     model.navToProductCardView(),
                          // width: screenHeightPercentage(context,
                          //     percentage: 0.5),
                          itemName: 'T-Shirt SPANISH',
                          // imageAssetName: blackTshirtGirl,
                          itemSize: 'itemSize',
                          itemPrice: '40',
                          showFav: () => model.showFav(),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return UIHelper.customVerticalSpace(24);
                    },
                    itemCount: 3),
                UIHelper.customVerticalSpace(25),
                GestureDetector(
                  onTap: () => print(promoCodeFocusNode.hasFocus),
                  child: SmallTextField(
                    controller: promoCodeController,
                    node: promoCodeFocusNode,
                    hint: 'Enter your promo code',
                    obscureText: false,
                    // isSearchField: false,
                    error: false,
                  ),
                ),
                UIHelper.customVerticalSpace(28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount', style: AppTextStyle.helperText14_500),
                    Text('124\$', style: AppTextStyle.headline3)
                  ],
                ),
                UIHelper.customVerticalSpace(26),
                PrimaryButton(
                    onPressed: () {
                      model.nToCheckout();
                    },
                    label: 'Checkout',
                    outlined: false,
                    active: true)
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => MyBagVm(),
    );
  }
}
