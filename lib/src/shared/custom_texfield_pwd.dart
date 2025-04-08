import 'package:flutter/material.dart';
import 'package:password_validation/src/shared/custom_texfield.dart';

class CustomTexfieldPwd extends StatefulWidget {
  final String label;
  final String hintText;
  final Color backgroundColor;
  final TextEditingController controller;

  const CustomTexfieldPwd({
    super.key,
    required this.label,
    required this.hintText,
    required this.backgroundColor,
    required this.controller,
  });

  @override
  State<CustomTexfieldPwd> createState() => _CustomTexfieldPwdState();
}

class _CustomTexfieldPwdState extends State<CustomTexfieldPwd> {
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    final CustomTexfieldPwd(:label, :hintText, :backgroundColor, :controller) =
        widget;
    return CustomTexfield(
      labelText: label,
      hintText: hintText,
      backgroundColor: backgroundColor,
      controller: controller,
      obscureText: obscureText,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
      ),
    );
  }
}
