import 'package:e_commerce/ui/nav_pages/categories/categories.dart';
import 'package:e_commerce/ui/nav_pages/main_page/main_page.dart';
import 'package:e_commerce/ui/nav_pages/main_page2/main_page2.dart';
import 'package:e_commerce/ui/nav_pages/main_page3/main_page3.dart';
import 'package:e_commerce/ui/nav_pages/nav_page/nav_page.dart';
import 'package:e_commerce/ui/view/add_shipping_address/add_shipping_address_view.dart';
import 'package:e_commerce/ui/view/brand/brand_view.dart';
import 'package:e_commerce/ui/view/catalog1/catalog1.dart';
import 'package:e_commerce/ui/view/catalog2/catalog2.dart';
import 'package:e_commerce/ui/view/category2/category2.dart';
import 'package:e_commerce/ui/view/checkout/checkout_view.dart';
import 'package:e_commerce/ui/view/favourites/favorites_view.dart';
import 'package:e_commerce/ui/view/filters/filters.dart';
import 'package:e_commerce/ui/view/fogot_password/forgot_password.dart';
import 'package:e_commerce/ui/view/login/login_view.dart';
import 'package:e_commerce/ui/view/my_bag/my_bag_view.dart';
import 'package:e_commerce/ui/view/payment/payment_method_view.dart';
import 'package:e_commerce/ui/view/product_card_view/product_card_view.dart';
import 'package:e_commerce/ui/view/ratings_and_review/ratings_and_review.dart';
import 'package:e_commerce/ui/view/shipping_address/shipping_address_view.dart';
import 'package:e_commerce/ui/view/signup/signup_view.dart';
import 'package:e_commerce/ui/view/success/success_2.dart';
import 'package:e_commerce/ui/view/success/success_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: MainPage1),
    MaterialRoute(page: NavPage, initial: true),
    MaterialRoute(page: MainPage2),
    MaterialRoute(page: MainPage3),
    MaterialRoute(page: CategoriesPage),
    MaterialRoute(page: Categories2Page),
    MaterialRoute(page: Catalog1Page),
    MaterialRoute(page: Catalog2Page),
    MaterialRoute(page: FilterPageView),
    MaterialRoute(page: BrandPageView),
    MaterialRoute(page: ProductCardView),
    MaterialRoute(page: RatingsAndReviewView),
    MaterialRoute(page: FavoriteView),
    MaterialRoute(page: MyBagView),
    MaterialRoute(page: CheckoutView),
    MaterialRoute(page: PaymentMethodView),
    MaterialRoute(page: ShippingAddress),
    MaterialRoute(page: AddShippingAddress),
    MaterialRoute(page: SuccessView),
    MaterialRoute(page: SuccessView2),
    //CupertinoRoute(page: SecondView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
  ],
)
@StackedApp()
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
// flutter pub run build_runner build --delete-conflicting-outputs