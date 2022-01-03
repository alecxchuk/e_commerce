// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String ReviewValueKey = 'review';

mixin $ReviewsBottomSheet on StatelessWidget {
  final TextEditingController reviewController = TextEditingController();
  final FocusNode reviewFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    reviewController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            ReviewValueKey: reviewController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    reviewController.dispose();
    reviewFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get reviewValue => this.formValueMap[ReviewValueKey];

  bool get hasReview => this.formValueMap.containsKey(ReviewValueKey);
}

extension Methods on FormViewModel {}
