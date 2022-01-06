import 'package:e_commerce/ui/shared/ui_bars/app_bars.dart';
import 'package:e_commerce/ui/view/profile/profile_vm.dart';
import 'package:e_commerce/ui/view/profile/widgets/profile_divider.dart';
import 'package:e_commerce/ui/view/profile/widgets/profile_info.dart';
import 'package:e_commerce/ui/view/profile/widgets/profile_listitem.dart';
import 'package:e_commerce/utils/constants/app_strings.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileVm>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: const AconAppBar(
          bgColor: AppColors.backgroundColor,
          headlineText: myProfileText,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              UIHelper.customVerticalSpace(20),
              const ProfileInfo(),
              // UIHelper.customVerticalSpace(15),
              GestureDetector(
                onTap: () => model.nToOrders(),
                child: const ProfileListItem(
                    title: myOrdersText, subtitle: 'Already have 12 orders'),
              ),
              const ProfileDivider(),
              GestureDetector(
                onTap: () => model.nToShipping(),
                child: const ProfileListItem(
                    title: shippingAddressesText, subtitle: '3 Addresses'),
              ),
              const ProfileDivider(),
              GestureDetector(
                onTap: () => model.nToPayments(),
                child: const ProfileListItem(
                    title: paymentMethods, subtitle: 'Visa**34'),
              ),
              const ProfileDivider(),
              const ProfileListItem(
                  title: promocodesText,
                  subtitle: 'You have special promocodes'),
              const ProfileDivider(),
              const ProfileListItem(
                  title: myReviewsText, subtitle: 'Reviews for 4 items'),
              const ProfileDivider(),
              GestureDetector(
                onTap: () => model.nToSettings(),
                child: const ProfileListItem(
                    title: settingsText, subtitle: 'Notifications,password'),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ProfileVm(),
    );
  }
}
