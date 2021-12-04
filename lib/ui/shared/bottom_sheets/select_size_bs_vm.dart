import 'package:e_commerce/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SelectSizeViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  Future showBasicBottomSheet() async {
    await _bottomSheetService.showBottomSheet(
      title: 'The basic bottom sheet',
      description:
          'Use this bottom sheet function to show something to the user. It\'s better than the standard alert dialog in terms of UI quality.',
    );
  }
}
