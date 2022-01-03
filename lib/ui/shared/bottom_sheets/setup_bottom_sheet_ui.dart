import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/ui/shared/bottom_sheets/review_bs/review_bs.dart';
import 'package:e_commerce/ui/shared/bottom_sheets/sort_by_bs/sort_by_bs.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked_services/stacked_services.dart';

import 'select_size_bs/select_size_bs.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.selectSize: (context, sheetRequest, completer) =>
        SelectSizeBottomSheet(request: sheetRequest, completer: completer),
    BottomSheetType.sortBy: (context, sheetRequest, completer) =>
        SortByBottomSheet(request: sheetRequest, completer: completer),
    BottomSheetType.review: (context, sheetRequest, completer) =>
        ReviewsBottomSheet(request: sheetRequest, completer: completer),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
