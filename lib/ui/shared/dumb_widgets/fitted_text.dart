import 'package:flutter/material.dart';

class FittedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double? width;
  final double? height;
  const FittedText(
      {Key? key,
      required this.text,
      required this.style,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
