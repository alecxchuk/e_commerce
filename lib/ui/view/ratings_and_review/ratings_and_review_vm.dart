import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RatingsAndReviewVm extends BaseViewModel {
  // bottom sheet service
  final _bottomSheetService = locator<BottomSheetService>();

  // write a review
  writeReview() async {
    await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.review, isScrollControlled: true);
    notifyListeners();
  }
}
