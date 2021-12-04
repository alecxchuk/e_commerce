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
const filterboxIcon = 'assets/svg_icons/filter_box.svg';
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

const cameraIcon = Icons.camera_alt;
const favoriteIcon = Icons.favorite;
const favoriteOutlinedIcon = Icons.favorite_border;
const addIcon = Icons.add;
const minusIcon = Icons.remove;
const editIcon = Icons.edit;
const cancelIcon = Icons.clear;
const arrowForwardIcon = Icons.arrow_forward;
const dropDownArrow = Icons.keyboard_arrow_down;
const filterList = Icons.filter_list;
const backIcon = Icons.arrow_back_ios;
const forwardIcon = Icons.arrow_forward_ios;
const moreVertIcon = Icons.more_vert;

// Images
const tShirtGuy = 'assets/images/tshirt_guy.png';
const dancingGirl = 'assets/images/dancing_girl.png';
const pulloverGirl = 'assets/images/pullover_girl.png';
const jeanGirl = 'assets/images/jean_girl.png';
const beachGirl = 'assets/images/beach_girl.png';
const jeansGuy = 'assets/images/jeans_guy.png';
const coolGuy = 'assets/images/cool_guy.png';

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
