import 'package:stacked/stacked.dart';

class BagProductCardVm extends BaseViewModel {
  // quantity of item
  int _itemQuantity = 1;
  int get itemQuantity => _itemQuantity;

  // function to increase item quantity by 1
  increaseQuantity() {
    _itemQuantity++;
    notifyListeners();
  }

  // function to decrease item quantity by 1
  decreaseQuantity() {
    // item quantity cannot by less than 1
    if (_itemQuantity > 1) {
      _itemQuantity--;
    }
    notifyListeners();
  }
}
