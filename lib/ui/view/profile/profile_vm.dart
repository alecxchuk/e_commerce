import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileVm extends BaseViewModel {
  // navigation service
  final _navigationService = locator<NavigationService>();

  // navigate to my orders
  nToOrders() {
    _navigationService.navigateTo(Routes.ordersView);
    notifyListeners();
  }

  // navigate to shipping addresses
  nToShipping() {
    _navigationService.navigateTo(Routes.shippingAddress);
    notifyListeners();
  }

  // navigate to payment methods
  nToPayments() {
    _navigationService.navigateTo(Routes.paymentMethodView);
    notifyListeners();
  }

  // navigate to settings page
  nToSettings() {
    _navigationService.navigateTo(Routes.settingsView);
    notifyListeners();
  }
}
