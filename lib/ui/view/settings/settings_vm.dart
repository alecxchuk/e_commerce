import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsVm extends BaseViewModel {
  // bottom sheet service
  final _bottomSheetService = locator<BottomSheetService>();

  // displays change password bottom sheet
  showChangePasswordBottomSheet() async {
    await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.passwordChange, isScrollControlled: true);
    notifyListeners();
  }
}
