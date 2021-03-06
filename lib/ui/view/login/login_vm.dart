import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:e_commerce/utils/mixins/validators_mixin.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'login_view.form.dart';

class LoginVm extends FormViewModel with ValidatorMixin {
  final _navigationService = locator<NavigationService>();
  @override
  void setFormStatus() {}

  // navigate to signup
  nToSignup() {
    _navigationService.navigateTo(Routes.signupView);
    notifyListeners();
  }

  // naviagte to main page
  nToMainPage() {}

  // naviagte to main page
  nToForgotPassword() {
    _navigationService.navigateTo(Routes.forgotPasswordView);
    notifyListeners();
  }

  // email field error message
  String _errorMessage = '';
  // password field error message
  String _passwordErrorMessage = '';
  // getter for email field error message
  String get msg => _errorMessage;
  // getter for password field error message
  String get passwordErrorMessage => _passwordErrorMessage;
  // validate form
  bool validateForm = false;

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

  // check for invalid password
  checkPassword() {
    // set password error message
    _passwordErrorMessage = validatePassword(passwordValue!) ?? '';
    notifyListeners();
  }

  // login
  login() {
    // start form validation
    formValidate();
  }
}
