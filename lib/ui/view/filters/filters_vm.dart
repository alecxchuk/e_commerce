import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FilterPageVm extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // navigate to brand page
  nToBrands() {
    _navigationService.navigateTo(Routes.brandPageView);
  }
}
