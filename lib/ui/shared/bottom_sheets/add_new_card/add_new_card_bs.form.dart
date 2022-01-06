// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String CardNameValueKey = 'cardName';
const String CardNumberValueKey = 'cardNumber';
const String ExpiryDateValueKey = 'expiryDate';
const String CvvValueKey = 'cvv';

mixin $AddNewCardBottomSheet on StatelessWidget {
  final TextEditingController cardNameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();
  final FocusNode cardNameFocusNode = FocusNode();
  final FocusNode cardNumberFocusNode = FocusNode();
  final FocusNode expiryDateFocusNode = FocusNode();
  final FocusNode cvvFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    cardNameController.addListener(() => _updateFormData(model));
    cardNumberController.addListener(() => _updateFormData(model));
    expiryDateController.addListener(() => _updateFormData(model));
    cvvController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            CardNameValueKey: cardNameController.text,
            CardNumberValueKey: cardNumberController.text,
            ExpiryDateValueKey: expiryDateController.text,
            CvvValueKey: cvvController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    cardNameController.dispose();
    cardNameFocusNode.dispose();
    cardNumberController.dispose();
    cardNumberFocusNode.dispose();
    expiryDateController.dispose();
    expiryDateFocusNode.dispose();
    cvvController.dispose();
    cvvFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get cardNameValue => this.formValueMap[CardNameValueKey];
  String? get cardNumberValue => this.formValueMap[CardNumberValueKey];
  String? get expiryDateValue => this.formValueMap[ExpiryDateValueKey];
  String? get cvvValue => this.formValueMap[CvvValueKey];

  bool get hasCardName => this.formValueMap.containsKey(CardNameValueKey);
  bool get hasCardNumber => this.formValueMap.containsKey(CardNumberValueKey);
  bool get hasExpiryDate => this.formValueMap.containsKey(ExpiryDateValueKey);
  bool get hasCvv => this.formValueMap.containsKey(CvvValueKey);
}

extension Methods on FormViewModel {}
