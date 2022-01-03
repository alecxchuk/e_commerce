import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppBarVm extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  Future showSelectSizeBottomSheet() async {
    await _bottomSheetService.showCustomSheet(variant: BottomSheetType.sortBy);

    notifyListeners();
  }
}
