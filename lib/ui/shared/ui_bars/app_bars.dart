import 'package:e_commerce/ui/shared/dumb_widgets/buttons/big_primary_button.dart';
import 'package:e_commerce/ui/shared/dumb_widgets/filter_menu/filter_menu.dart';
import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_styles.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'appbar_vm.dart';

class AconAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? headlineText;
  final String? centerTitle;
  final Color bgColor;
  final Color? shadowColor;
  final Function onBackPress;
  final bool isSearch;
  final bool isShare;
  final double elevation;
  final List<String> catalogTagsList;
  final bool isCatalog;
  final VoidCallback? navToFilterPage;
  const AconAppBar(
      {Key? key,
      required this.bgColor,
      required this.onBackPress,
      this.navToFilterPage, // function that navigates to filter page
      this.shadowColor,
      this.headlineText,
      this.centerTitle,
      this.isSearch = true,
      this.isShare = false,
      this.elevation = 0,
      this.catalogTagsList = catalogTags,
      this.isCatalog = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = AppBarVm();
    return AppBar(
      backgroundColor: bgColor,
      shadowColor: shadowColor ?? AppColors.blackColor.withOpacity(0.08),
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: bgColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
      elevation: elevation,
      centerTitle: true,
      title: centerTitle != null
          ? Text(
              centerTitle!,
              textAlign: TextAlign.start,
              style: AppTextStyle.headline3,
            )
          : null,
      bottom: headlineText != null || isCatalog
          ? PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UIHelper.customVerticalSpace(
                          headlineText != null ? 32 : 0),
                      Visibility(
                        visible: headlineText != null,
                        child: Text(
                          headlineText ?? '',
                          textAlign: TextAlign.start,
                          style: AppTextStyle.headline,
                        ),
                      ),
                      UIHelper.customVerticalSpace(isCatalog ? 12 : 0),
                      Visibility(
                        visible: isCatalog,
                        child: SizedBox(
                          height: 30,
                          child: ListView.separated(
                            //shrinkWrap: true,
                            itemCount: catalogTagsList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return PrimaryButton(
                                  onPressed: () {},
                                  width: 100,
                                  //height: 30,
                                  backgroundColor: AppColors.realBlack,
                                  label: catalogTagsList[index],
                                  outlined: false,
                                  active: true);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return UIHelper.horizontalSpaceSmall;
                            },
                          ),
                        ),
                      ),
                      UIHelper.customVerticalSpace(isCatalog ? 18 : 0),
                      Visibility(
                          visible: isCatalog,
                          child: FilterMenu(
                            priceChoice: lowestToHigh,
                            navToFilterPage: navToFilterPage ?? () {},
                            showSortBottomSheet:
                                model.showSelectSizeBottomSheet,
                          )),
                      UIHelper.customVerticalSpace(isCatalog ? 10 : 0),
                    ],
                  ),
                ),
              ),
              preferredSize: const Size.fromHeight(70))
          : null,
      leading: IconButton(
        icon: const Icon(
          backIcon,
          color: AppColors.blackColor,
          size: 20,
        ),
        onPressed: () => onBackPress(),
      ),
      actions: isSearch || isShare
          ? [
              Visibility(
                visible: isSearch,
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: AppColors.blackColor,
                    size: 24,
                  ),
                  onPressed: () => onBackPress(),
                ),
              ),
              Visibility(
                visible: isShare,
                child: IconButton(
                  icon: const Icon(
                    shareIcon,
                    color: AppColors.blackColor,
                    size: 24,
                  ),
                  onPressed: () => onBackPress(),
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(headlineText != null && isCatalog
      ? 190
      : headlineText != null
          ? 100
          : centerTitle != null && isCatalog
              ? 130
              : 44);
}
