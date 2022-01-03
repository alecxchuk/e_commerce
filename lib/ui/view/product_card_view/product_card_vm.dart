import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductCardViewVm extends BaseViewModel {
  // navigation service
  final _navigationService = locator<NavigationService>();

  // navigates to ratings and review page
  nToRatingsReview() {
    _navigationService.navigateTo(Routes.ratingsAndReviewView);
    notifyListeners();
  }
}
