import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PasswordChangeBottomSheetVm extends BaseViewModel {
  // navigation service
  final _navigationService = locator<NavigationService>();

  // navigate to forgot password
  nToForgotPassword() {
    _navigationService.navigateTo(Routes.forgotPasswordView);
  }
}
