import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:madang/constants/app_colors/app_colors.dart';
import 'package:madang/widgets/text_widget/text_widget.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final String label;
  final Color color;
  final Widget? suffixIcon;
  final bool obscure;
  final bool readOnly;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.text,
    required this.color,
    this.suffixIcon,
    this.keyboardType,
    this.obscure = false,
    this.readOnly = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget.h4(label, color, context),
          SizedBox(height: 10,),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            readOnly: readOnly,
            obscureText: obscure,
            obscuringCharacter: "*",
            validator: validator,
            style: GoogleFonts.poppins(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              hintText: text,
              hintStyle: GoogleFonts.poppins(
                color: AppColors.greyColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.greyColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.greyColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.greyColor),
              ),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColors.redColor
                  )
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.redColor
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}
