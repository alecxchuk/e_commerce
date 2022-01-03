import 'package:e_commerce/utils/constants/app_constants.dart';
import 'package:e_commerce/utils/constants/ui_helpers.dart';
import 'package:flutter/material.dart';

class PhotoFrame extends StatelessWidget {
  const PhotoFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: UIHelper.extraSmallBorderRadius, //add border radius here
      child: Image.asset(flowerGirl), //add image location here
    );
  }
}
