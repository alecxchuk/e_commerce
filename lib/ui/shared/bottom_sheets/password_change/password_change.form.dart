// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String OldPasswordValueKey = 'oldPassword';
const String NewPasswordValueKey = 'newPassword';
const String RepeatNewPasswordValueKey = 'repeatNewPassword';

mixin $PasswordChangeBottomSheet on StatelessWidget {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController repeatNewPasswordController =
      TextEditingController();
  final FocusNode oldPasswordFocusNode = FocusNode();
  final FocusNode newPasswordFocusNode = FocusNode();
  final FocusNode repeatNewPasswordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    oldPasswordController.addListener(() => _updateFormData(model));
    newPasswordController.addListener(() => _updateFormData(model));
    repeatNewPasswordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            OldPasswordValueKey: oldPasswordController.text,
            NewPasswordValueKey: newPasswordController.text,
            RepeatNewPasswordValueKey: repeatNewPasswordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    oldPasswordController.dispose();
    oldPasswordFocusNode.dispose();
    newPasswordController.dispose();
    newPasswordFocusNode.dispose();
    repeatNewPasswordController.dispose();
    repeatNewPasswordFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get oldPasswordValue => this.formValueMap[OldPasswordValueKey];
  String? get newPasswordValue => this.formValueMap[NewPasswordValueKey];
  String? get repeatNewPasswordValue =>
      this.formValueMap[RepeatNewPasswordValueKey];

  bool get hasOldPassword => this.formValueMap.containsKey(OldPasswordValueKey);
  bool get hasNewPassword => this.formValueMap.containsKey(NewPasswordValueKey);
  bool get hasRepeatNewPassword =>
      this.formValueMap.containsKey(RepeatNewPasswordValueKey);
}

extension Methods on FormViewModel {}
