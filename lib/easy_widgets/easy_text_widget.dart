import 'package:flutter/material.dart';
import 'package:my_library/utils/font_typography.dart';

class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal})
      : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      text,
      style: TextStyle(
        fontSize: FontTypography.getFontSizeByDevice(context, fontSize),
        fontWeight: fontWeight,
        color: color,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}