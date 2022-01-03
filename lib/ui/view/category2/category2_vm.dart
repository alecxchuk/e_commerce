import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class Categories2PageVm extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navToCatalog() {
    _navigationService.pushNamedAndRemoveUntil(Routes.catalog1Page);
    notifyListeners();
  }
}
