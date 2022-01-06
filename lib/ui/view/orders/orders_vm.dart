import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrdersVm extends BaseViewModel {
  // navigation service
  final _navigationService = locator<NavigationService>();

  // navigate to order details page
  nToOrderDetails() {
    _navigationService.navigateTo(Routes.orderDetailsView);
    notifyListeners();
  }
}
