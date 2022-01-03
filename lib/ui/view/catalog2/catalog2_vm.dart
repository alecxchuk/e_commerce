import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class Catalog2PageVm extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final _bottomSheetService = locator<BottomSheetService>();

  Future showSelectSizeBottomSheet() async {
    await _bottomSheetService.showBottomSheet(
      title: 'The basic bottom sheet',
      description:
          'Use this bottom sheet function to show something to the user. It\'s better than the standard alert dialog in terms of UI quality.',
    );
  }

  // navigates to the filter page
  navToFilterPage() {
    _navigationService.navigateTo(Routes.filterPageView);
    notifyListeners();
  }

  // navigates to product card page
  navToProductCardView() {
    _navigationService.navigateTo(Routes.productCardView);
    notifyListeners();
  }
}
