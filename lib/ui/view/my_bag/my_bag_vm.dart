import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyBagVm extends FormViewModel {
  // get bottom sheet service
  final _bottomSheetServive = locator<BottomSheetService>();

  // dialog service
  final _dialogService = locator<DialogService>();

  // navigation service
  final _navigationService = locator<NavigationService>();

  // open promoCode bottom sheet
  showPromoCodeBottomSheet() async {
    print('hollas');
    await _bottomSheetServive.showCustomSheet(
        variant: BottomSheetType.promoCode);

    notifyListeners();
  }

  // show favorite
  showFav() async {
    // Implement clickaway
    await _dialogService.showCustomDialog(variant: DialogType.popup);
  }

  // navigate to checkout
  nToCheckout() {
    _navigationService.navigateTo(Routes.checkoutView);
    notifyListeners();
  }

  @override
  void setFormStatus() {}
}
