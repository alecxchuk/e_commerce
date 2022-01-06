// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FullnameValueKey = 'fullname';
const String AddressValueKey = 'address';
const String CityValueKey = 'city';
const String StateValueKey = 'state';
const String ZipValueKey = 'zip';
const String CountryValueKey = 'country';

mixin $AddShippingAddress on StatelessWidget {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController zipController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final FocusNode fullnameFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();
  final FocusNode cityFocusNode = FocusNode();
  final FocusNode stateFocusNode = FocusNode();
  final FocusNode zipFocusNode = FocusNode();
  final FocusNode countryFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    fullnameController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
    cityController.addListener(() => _updateFormData(model));
    stateController.addListener(() => _updateFormData(model));
    zipController.addListener(() => _updateFormData(model));
    countryController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            FullnameValueKey: fullnameController.text,
            AddressValueKey: addressController.text,
            CityValueKey: cityController.text,
            StateValueKey: stateController.text,
            ZipValueKey: zipController.text,
            CountryValueKey: countryController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    fullnameController.dispose();
    fullnameFocusNode.dispose();
    addressController.dispose();
    addressFocusNode.dispose();
    cityController.dispose();
    cityFocusNode.dispose();
    stateController.dispose();
    stateFocusNode.dispose();
    zipController.dispose();
    zipFocusNode.dispose();
    countryController.dispose();
    countryFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get fullnameValue => this.formValueMap[FullnameValueKey];
  String? get addressValue => this.formValueMap[AddressValueKey];
  String? get cityValue => this.formValueMap[CityValueKey];
  String? get stateValue => this.formValueMap[StateValueKey];
  String? get zipValue => this.formValueMap[ZipValueKey];
  String? get countryValue => this.formValueMap[CountryValueKey];

  bool get hasFullname => this.formValueMap.containsKey(FullnameValueKey);
  bool get hasAddress => this.formValueMap.containsKey(AddressValueKey);
  bool get hasCity => this.formValueMap.containsKey(CityValueKey);
  bool get hasState => this.formValueMap.containsKey(StateValueKey);
  bool get hasZip => this.formValueMap.containsKey(ZipValueKey);
  bool get hasCountry => this.formValueMap.containsKey(CountryValueKey);
}

extension Methods on FormViewModel {}
