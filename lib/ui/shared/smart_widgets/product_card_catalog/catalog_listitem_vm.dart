import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CatalogProductCardVm extends BaseViewModel {
  // get bottomsheet
  final _bottomSheetService = locator<BottomSheetService>();

  // show select size bottom sheet
  showSelectSize() async {
    await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.selectSize);
    notifyListeners();
  }
}
