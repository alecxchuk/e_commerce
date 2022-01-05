// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/nav_pages/categories/categories.dart';
import '../ui/nav_pages/main_page/main_page.dart';
import '../ui/nav_pages/main_page2/main_page2.dart';
import '../ui/nav_pages/main_page3/main_page3.dart';
import '../ui/nav_pages/nav_page/nav_page.dart';
import '../ui/view/add_shipping_address/add_shipping_address_view.dart';
import '../ui/view/brand/brand_view.dart';
import '../ui/view/catalog1/catalog1.dart';
import '../ui/view/catalog2/catalog2.dart';
import '../ui/view/category2/category2.dart';
import '../ui/view/checkout/checkout_view.dart';
import '../ui/view/favourites/favorites_view.dart';
import '../ui/view/filters/filters.dart';
import '../ui/view/fogot_password/forgot_password.dart';
import '../ui/view/login/login_view.dart';
import '../ui/view/my_bag/my_bag_view.dart';
import '../ui/view/payment/payment_method_view.dart';
import '../ui/view/product_card_view/product_card_view.dart';
import '../ui/view/ratings_and_review/ratings_and_review.dart';
import '../ui/view/shipping_address/shipping_address_view.dart';
import '../ui/view/signup/signup_view.dart';
import '../ui/view/success/success_2.dart';
import '../ui/view/success/success_view.dart';

class Routes {
  static const String loginView = '/login-view';
  static const String signupView = '/signup-view';
  static const String forgotPasswordView = '/forgot-password-view';
  static const String mainPage1 = '/main-page1';
  static const String navPage = '/';
  static const String mainPage2 = '/main-page2';
  static const String mainPage3 = '/main-page3';
  static const String categoriesPage = '/categories-page';
  static const String categories2Page = '/categories2-page';
  static const String catalog1Page = '/catalog1-page';
  static const String catalog2Page = '/catalog2-page';
  static const String filterPageView = '/filter-page-view';
  static const String brandPageView = '/brand-page-view';
  static const String productCardView = '/product-card-view';
  static const String ratingsAndReviewView = '/ratings-and-review-view';
  static const String favoriteView = '/favorite-view';
  static const String myBagView = '/my-bag-view';
  static const String checkoutView = '/checkout-view';
  static const String paymentMethodView = '/payment-method-view';
  static const String shippingAddress = '/shipping-address';
  static const String addShippingAddress = '/add-shipping-address';
  static const String successView = '/success-view';
  static const String successView2 = '/success-view2';
  static const all = <String>{
    loginView,
    signupView,
    forgotPasswordView,
    mainPage1,
    navPage,
    mainPage2,
    mainPage3,
    categoriesPage,
    categories2Page,
    catalog1Page,
    catalog2Page,
    filterPageView,
    brandPageView,
    productCardView,
    ratingsAndReviewView,
    favoriteView,
    myBagView,
    checkoutView,
    paymentMethodView,
    shippingAddress,
    addShippingAddress,
    successView,
    successView2,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signupView, page: SignupView),
    RouteDef(Routes.forgotPasswordView, page: ForgotPasswordView),
    RouteDef(Routes.mainPage1, page: MainPage1),
    RouteDef(Routes.navPage, page: NavPage),
    RouteDef(Routes.mainPage2, page: MainPage2),
    RouteDef(Routes.mainPage3, page: MainPage3),
    RouteDef(Routes.categoriesPage, page: CategoriesPage),
    RouteDef(Routes.categories2Page, page: Categories2Page),
    RouteDef(Routes.catalog1Page, page: Catalog1Page),
    RouteDef(Routes.catalog2Page, page: Catalog2Page),
    RouteDef(Routes.filterPageView, page: FilterPageView),
    RouteDef(Routes.brandPageView, page: BrandPageView),
    RouteDef(Routes.productCardView, page: ProductCardView),
    RouteDef(Routes.ratingsAndReviewView, page: RatingsAndReviewView),
    RouteDef(Routes.favoriteView, page: FavoriteView),
    RouteDef(Routes.myBagView, page: MyBagView),
    RouteDef(Routes.checkoutView, page: CheckoutView),
    RouteDef(Routes.paymentMethodView, page: PaymentMethodView),
    RouteDef(Routes.shippingAddress, page: ShippingAddress),
    RouteDef(Routes.addShippingAddress, page: AddShippingAddress),
    RouteDef(Routes.successView, page: SuccessView),
    RouteDef(Routes.successView2, page: SuccessView2),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    SignupView: (data) {
      var args = data.getArgs<SignupViewArguments>(
        orElse: () => SignupViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupView(key: args.key),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      var args = data.getArgs<ForgotPasswordViewArguments>(
        orElse: () => ForgotPasswordViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(key: args.key),
        settings: data,
      );
    },
    MainPage1: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainPage1(),
        settings: data,
      );
    },
    NavPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NavPage(),
        settings: data,
      );
    },
    MainPage2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainPage2(),
        settings: data,
      );
    },
    MainPage3: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MainPage3(),
        settings: data,
      );
    },
    CategoriesPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CategoriesPage(),
        settings: data,
      );
    },
    Categories2Page: (data) {
      var args = data.getArgs<Categories2PageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => Categories2Page(
          key: args.key,
          controller: args.controller,
        ),
        settings: data,
      );
    },
    Catalog1Page: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Catalog1Page(),
        settings: data,
      );
    },
    Catalog2Page: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Catalog2Page(),
        settings: data,
      );
    },
    FilterPageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FilterPageView(),
        settings: data,
      );
    },
    BrandPageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BrandPageView(),
        settings: data,
      );
    },
    ProductCardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProductCardView(),
        settings: data,
      );
    },
    RatingsAndReviewView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RatingsAndReviewView(),
        settings: data,
      );
    },
    FavoriteView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FavoriteView(),
        settings: data,
      );
    },
    MyBagView: (data) {
      var args = data.getArgs<MyBagViewArguments>(
        orElse: () => MyBagViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyBagView(key: args.key),
        settings: data,
      );
    },
    CheckoutView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CheckoutView(),
        settings: data,
      );
    },
    PaymentMethodView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PaymentMethodView(),
        settings: data,
      );
    },
    ShippingAddress: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ShippingAddress(),
        settings: data,
      );
    },
    AddShippingAddress: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddShippingAddress(),
        settings: data,
      );
    },
    SuccessView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SuccessView(),
        settings: data,
      );
    },
    SuccessView2: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SuccessView2(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// SignupView arguments holder class
class SignupViewArguments {
  final Key? key;
  SignupViewArguments({this.key});
}

/// ForgotPasswordView arguments holder class
class ForgotPasswordViewArguments {
  final Key? key;
  ForgotPasswordViewArguments({this.key});
}

/// Categories2Page arguments holder class
class Categories2PageArguments {
  final Key? key;
  final PageController controller;
  Categories2PageArguments({this.key, required this.controller});
}

/// MyBagView arguments holder class
class MyBagViewArguments {
  final Key? key;
  MyBagViewArguments({this.key});
}
