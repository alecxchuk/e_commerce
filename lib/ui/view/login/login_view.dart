import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/ui/shared/bottom_navigation/bottom_nav.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/color_pick/color_pick.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/ratings_bar/ratings_bar.dart';
import 'package:e_commerce/ui/shared/smart_widgets/category_card/category_card.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_bag/bag_list_item.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_catalog/catalog_listitem.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_catalog/catalog_module.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_favorite/favorite_listitem.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_favorite/favorite_module.dart';
import 'package:e_commerce/ui/shared/smart_widgets/product_card_order_info/order_info_listitem.dart';
import 'package:e_commerce/ui/shared/smart_widgets/promo_code_card/promocode_card.dart';

import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginView extends StatelessWidget {
  final bottomSheetService = locator<BottomSheetService>();
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AconAppBar(
        headlineText: 'Headline',
        bgColor: AppColors.backgroundColor,
      ),
      bottomNavigationBar: BottomNav(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(sizeInfo,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Metropolis-Regular')),
              SizedBox(height: 8.0),
              SizedBox(
                height: 8.0,
              ),
              ColorPicker(color: AppColors.blackColor, selected: true),
              SizedBox(
                height: 8.0,
              ),
              ElevatedButton(
                child: Text('Show Custom BottomSheet'),
                onPressed: () => bottomSheetService.showCustomSheet(
                  variant: BottomSheetType.selectSize,
                  title: 'This is a floating bottom sheet',
                  description:
                      'This sheet is a custom built bottom sheet UI that allows you to show it from any service or viewmodel.',
                  mainButtonTitle: 'Awesome!',
                  secondaryButtonTitle: 'This is cool',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              // FavoriteProductCard(
              //   itemName: 'Pullover',
              //   brandName: 'Mango',
              //   itemSize: 'M',
              //   itemPrice: 55,
              //   starRating: 0,
              //   numberOfRatings: 0,
              //   itemAvailable: true,
              //   salesValue: -30,
              //   label: newText,
              // ),
              // SizedBox(
              //   height: 8.0,
              // ),
              // CatalogueProductModuleCard(
              //   itemName: 'Pullover',
              //   brandName: 'Mango',
              //   itemSize: 'M',
              //   itemPrice: 55,
              //   starRating: 0,
              //   numberOfRatings: 0,
              //   itemAvailable: true,
              //   salesValue: -30,
              //   label: sales,
              // ),
              PromoCodeCard(
                daysLeft: 6,
                offerName: 'Personal offer',
                offValue: 25,
                promoCode: 'acon225',
                hasImage: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
