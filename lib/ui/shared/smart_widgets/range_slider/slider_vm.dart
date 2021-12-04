import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PriceRangeViewModel extends BaseViewModel {
  RangeValues _currentRangeValues = const RangeValues(20, 60);
  RangeValues get currentRangeValues => _currentRangeValues;

  setRangeValues(RangeValues values) {
    _currentRangeValues = values;
    notifyListeners();
  }
}
