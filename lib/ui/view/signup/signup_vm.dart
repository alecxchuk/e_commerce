import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/app/app.router.dart';
import 'package:e_commerce/utils/mixins/validators_mixin.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'signup_view.form.dart';

class SignupViewModel extends FormViewModel with ValidatorMixin {
  final _navigationService = locator<NavigationService>();

  // email field error message
  String _errorMessage = '';
  // password field error message
  String _passwordErrorMessage = '';
  // name field error message
  String _nameError = '';
  // getter for email field error message
  String get emailErrorMessage => _errorMessage;
  // getter for password field error message
  String get passwordErrorMessage => _passwordErrorMessage;
  // getter for name field error message
  String get nameErrorMessage => _nameError;
  // validate form
  bool validateForm = false;

  // check for invalid email
  checkEmail() {
    // set email error message
    _errorMessage = validateEmail(emailValue!) ?? '';
    notifyListeners();
  }

  // check for invalid email
  checkName() {
    // set email error message
    _nameError = validateNotEmptyField(fullnameValue!, 'name') ?? '';
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

  @override
  void setFormStatus() {}

  // naviagte to main page
  nToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }

  // navigate to otp
  nToOtp() {}

  // signup
  signup() {
    formValidate();
  }
}
