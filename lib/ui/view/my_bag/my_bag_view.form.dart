// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String PromoCodeValueKey = 'promoCode';

mixin $MyBagView on StatelessWidget {
  final TextEditingController promoCodeController = TextEditingController();
  final FocusNode promoCodeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    promoCodeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            PromoCodeValueKey: promoCodeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    promoCodeController.dispose();
    promoCodeFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get promoCodeValue => this.formValueMap[PromoCodeValueKey];

  bool get hasPromoCode => this.formValueMap.containsKey(PromoCodeValueKey);
}

extension Methods on FormViewModel {}
