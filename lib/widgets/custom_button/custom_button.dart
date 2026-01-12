import 'package:flutter/material.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color borderColor;
  final Color textColor;
  const CustomButton({super.key,required this.text,
    required this.color,required this.textColor,required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 371,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: borderColor)
      ),child: Center(
      child: TextWidget.h4(text, textColor, context),
    ),
    );
  }
}
