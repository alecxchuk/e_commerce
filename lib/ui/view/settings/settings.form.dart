// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String FullnameValueKey = 'fullname';
const String DobValueKey = 'dob';
const String PasswordValueKey = 'password';

mixin $SettingsView on StatelessWidget {
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode fullnameFocusNode = FocusNode();
  final FocusNode dobFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    fullnameController.addListener(() => _updateFormData(model));
    dobController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            FullnameValueKey: fullnameController.text,
            DobValueKey: dobController.text,
            PasswordValueKey: passwordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    fullnameController.dispose();
    fullnameFocusNode.dispose();
    dobController.dispose();
    dobFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get fullnameValue => this.formValueMap[FullnameValueKey];
  String? get dobValue => this.formValueMap[DobValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];

  bool get hasFullname => this.formValueMap.containsKey(FullnameValueKey);
  bool get hasDob => this.formValueMap.containsKey(DobValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
}

extension Methods on FormViewModel {}
