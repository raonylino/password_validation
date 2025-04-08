import 'package:flutter/material.dart';
import 'package:password_validation/src/shared/colors_app.dart';

class CustomTexfield extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final Key? textFieldKey;

  const CustomTexfield({
    super.key,
    required this.labelText,
    this.hintText,
    this.backgroundColor,
    this.suffixIcon,
    required this.controller,
    required this.obscureText,
    this.validator,
    this.focusNode,
    this.textFieldKey,
  });

  @override
  State<CustomTexfield> createState() => _CustomTexfieldState();
}

class _CustomTexfieldState extends State<CustomTexfield> {
  @override
  Widget build(BuildContext context) {
    final CustomTexfield(
      :backgroundColor,
      :labelText,
      :hintText,
      :suffixIcon,
      :obscureText,
      :validator,
      :focusNode,
      :textFieldKey,
      :controller,
    ) = widget;

    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: ColorsApp.primaryColor,
          ),
        ),

        TextFormField(
          key: textFieldKey,
          focusNode: focusNode,
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            fillColor: backgroundColor ?? Colors.white,
            hintText: hintText,
            filled: true,
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
