import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/ui/shared/bottom_sheets/select_size_bs.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked_services/stacked_services.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.selectSize: (context, sheetRequest, completer) =>
        SelectSizeBottomSheet(request: sheetRequest, completer: completer)
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
