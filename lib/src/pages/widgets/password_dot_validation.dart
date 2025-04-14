import 'package:flutter/material.dart';
import 'package:password_validation/src/shared/colors_app.dart';

typedef UpdateMatchCallback = Function(ValueKey<int> key, bool match);

class PasswordDotValidation extends StatelessWidget {
  final String label;
  final String patterValidation;
  final ValueNotifier<String> passwordValue;
  final UpdateMatchCallback updateMatch;

  const PasswordDotValidation({
    required super.key,
    required this.label,
    required this.patterValidation,
    required this.passwordValue,
    required this.updateMatch,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: passwordValue,
      builder: (_, passwordText, _) {
        final valid = RegExp(patterValidation).hasMatch(passwordText);
        updateMatch(super.key as ValueKey<int>, valid);

        return Row(
          spacing: 8,
          children: [
            Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Visibility(
                  visible: valid,
                  child: Container(
                    width: 11,
                    height: 11,
                    decoration: BoxDecoration(
                      color: ColorsApp.primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: ColorsApp.coolGrayColor,
              ),
            ),
          ],
        );
      },
    );
  }
}
