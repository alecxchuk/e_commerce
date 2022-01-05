import 'package:stacked/stacked.dart';

class FavoritesVm extends BaseViewModel {
  // determines type of view. If true, view is grid and if false view is list
  bool _isGridView = false;

  // returns the type of view
  bool get isGridView => _isGridView;

  // toggles between list and grid view
  setViewType() {
    _isGridView = !_isGridView;
    print('halleluyah');
    notifyListeners();
  }
}
