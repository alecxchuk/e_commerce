import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:e_commerce/utils/mixins/validators_mixin.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'forgot_password.form.dart';

class ForgotPasswordViewModel extends FormViewModel with ValidatorMixin {
  final _navigationService = locator<NavigationService>();

  // email field error message
  String _errorMessage = '';
  // getter for email field error message
  String get emailErrorMessage => _errorMessage;
  // validate form
  bool validateForm = false;

  @override
  void setFormStatus() {}
  restPassword() {
    formValidate();
  }

  // navigate to login
  nToLogin() {
    _navigationService.navigateTo(Routes.loginView);
    notifyListeners();
  }

  // check for invalid email
  checkEmail() {
    // set email error message
    _errorMessage = validateEmail(emailValue!) ?? '';
    notifyListeners();
  }

  // Starts form auto validation
  formValidate() {
    // start auto validation
    validateForm = true;
    notifyListeners();
  }
}
