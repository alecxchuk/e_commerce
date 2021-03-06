import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CheckoutVm extends BaseViewModel {
  // navigation service
  final _navigationService = locator<NavigationService>();

  // navigate to payment page
  nToPayment() {
    _navigationService.navigateTo(Routes.paymentMethodView);
    notifyListeners();
  }

  // navigate to shipping address page
  nToShipping() {
    _navigationService.navigateTo(Routes.shippingAddress);
    notifyListeners();
  }

  // navigate to success page
  nToSuccess() {
    _navigationService.navigateTo(Routes.successView2);
    notifyListeners();
  }
}
