import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class PaymentMethodVm extends BaseViewModel {
  // bottom sheet service
  final _bottomSheetService = locator<BottomSheetService>();

  // show add new card bottom sheet
  showAddNewCard() async {
    //
    await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.addNewCard, isScrollControlled: true);
    notifyListeners();
  }
}
