import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const apiBaseUrl = 'https://api.zuri.chat';
//* Client data

//* Messages
const serverErrorMessage = 'An error occured. Please try again.';
const networkErrorMessage = 'Please check your internet'
    ' connection and try again';
//* Defaults
const searchIcon = 'assets/svg_icons/Search.svg';
const shoppingBag = 'assets/svg_icons/shopping_bag.svg';
const facebookIcon = 'assets/svg_icons/facebook.svg';
const googleIcon = 'assets/svg_icons/google.svg';
const upDownIcon = 'assets/svg_icons/up_down.svg';
const listViewIcon = 'assets/svg_icons/list_view_icon.svg';
const gridViewIcon = 'assets/svg_icons/grid_view_icon.svg';
const starIcon = 'assets/svg_icons/Star.svg';
const emptyStarIcon = 'assets/svg_icons/emptyStar.svg';
const homeIcon = 'assets/svg_icons/home_icon.svg';
const homeIconFilled = 'assets/svg_icons/home_icon_filled.svg';
const shoppingCart = 'assets/svg_icons/shopping_cart.svg';
const shoppingCartFilled = 'assets/svg_icons/shopping_cart_filled.svg';
const shoppingBagBtm = 'assets/svg_icons/shopping_bag_btm.svg';
const shoppingBagFilled = 'assets/svg_icons/shopping_bag_filled.svg';
const shoppingBagTip = 'assets/svg_icons/shopping_bag_tooltip.svg';
const favoriteIcons = 'assets/svg_icons/favorite_icon.svg';
const favoriteIconFilled = 'assets/svg_icons/favorite_icon_filled.svg';
const profileIcon = 'assets/svg_icons/profile_icon.svg';
const profileIconFilled = 'assets/svg_icons/profile_icon_filled.svg';
const mastercardIcon = 'assets/svg_icons/mastercard.svg';
const fedexIcon = 'assets/svg_icons/fedex.svg';
const upsIcon = 'assets/svg_icons/usps.svg';
const dhlIcon = 'assets/svg_icons/dhl.svg';
const masterCardBottomDesign = 'assets/cards/mastercard_design.svg';
const cardChip = 'assets/cards/chip.svg';
const visaLogo = 'assets/cards/visa_logo.svg';

const cameraIcon = Icons.camera_alt;
const favoriteIcon = Icons.favorite;
const favoriteOutlinedIcon = Icons.favorite_border;
const addIcon = Icons.add;
const minusIcon = Icons.remove;
const editIcon = Icons.edit;
const cancelIcon = Icons.clear;
const arrowForwardIcon = Icons.arrow_forward;
const longArrowRight = Icons.arrow_right_alt;
const dropDownArrow = Icons.keyboard_arrow_down;
const filterList = Icons.filter_list;
const backIcon = Icons.arrow_back_ios;
const forwardIcon = Icons.arrow_forward_ios;
const moreVertIcon = Icons.more_vert;
const shareIcon = Icons.share;
const thumbsUpIcon = Icons.thumb_up;

// Images
const tShirtGuy = 'assets/images/tshirt_guy.png';
const dancingGirl = 'assets/images/dancing_girl.png';
const pulloverGirl = 'assets/images/pullover_girl.png';
const jeanGirl = 'assets/images/jean_girl.png';
const beachGirl = 'assets/images/beach_girl.png';
const flowerGirl = 'assets/images/flower_girl.png';
const stripeGirl = 'assets/images/stripe_girl.png';
const kebGirl = 'assets/images/keb_girl.png';
const shoeLeg = 'assets/images/shoe_leg.png';
const neckLady = 'assets/images/neck_lady.png';
const hatGirl = 'assets/images/hat_girl.png';
const longSleeveGirl = 'assets/images/long_sleeve_girl.png';
const whiteTshirtGril = 'assets/images/white_tshirt_girl.png';
const jeanSpecsGirl = 'assets/images/jean_specs_girl.png';
const asianSpecsGirl = 'assets/images/asian_specs_girl.png';
const jeansGuy = 'assets/images/jeans_guy.png';
const coolGuy = 'assets/images/cool_guy.png';
const whiteTshirtGuy = 'assets/images/white_tshirt_guy.png';
const mainPage1Banner = 'assets/images/main_page1_banner.png';
const mainPage2Banner = 'assets/images/street_clothes_girl.png';
const yellowHoodieGuy = 'assets/images/yellow_hoodie_guy.png';
const whitePrettyGirl = 'assets/images/white_pretty_girl.png';
const blackTshirtGirl = 'assets/images/black_tshirt_girl.png';
const shortDressGirl = 'assets/images/short_dress_girl.png';
const turtleNeckGirl = 'assets/images/turtle_neck_girl.png';
const successGirl = 'assets/images/success_girl.png';
const successBags = 'assets/images/success_bags.png';

List<String> bottomNavBarList = ['Home', 'Shop', 'Bag', 'Fav', 'Profile'];

List<String> sortList = [
  popular,
  newest,
  customerReview,
  price + ': ' + lowestToHigh,
  price + ': ' + highestToLow
];

const double zSideMargin = 16;

const channelsBaseUrl = 'https://channels.zuri.chat/api/';
const dmsBaseUrl = 'https://dm.zuri.chat/api/';
const coreBaseUrl = 'https://api.zuri.chat/';
const websocketUrl = 'wss://realtime.zuri.chat/connection/websocket';

const String LOCALE_VAL = 'localeVal';
const int DEFAULT_LOCALE_VAL = 0;

Iterable<Locale> supportedLocalesList = const [
  Locale('en', 'US'),
  Locale('de', 'DE'),
  Locale('ar', 'SA'),
  Locale('zh', 'HK'),
  Locale('es', 'ES'),
  Locale('ja', 'JP'),
  Locale('he', 'IL'),
  Locale('it', 'IT'),
  Locale('pr-br', 'PR-BR')
];

// Strings
const camera = 'camera';
const shoppingBagText = 'shopping bag';
const favorite = 'favorite';
const plusButton = 'plusButton';
const minusButton = 'minusButton';
const facebookText = 'facebook';
const googleText = 'googleText';
