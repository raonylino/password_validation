import 'package:flutter/material.dart';
import 'package:password_validation/src/pages/widgets/password_dot_validation.dart';
import 'package:password_validation/src/shared/colors_app.dart';

class PasswordValidationPainelWidget extends StatefulWidget {
  const PasswordValidationPainelWidget({super.key});

  @override
  State<PasswordValidationPainelWidget> createState() =>
      _PasswordValidationPainelWidgetState();
}

class _PasswordValidationPainelWidgetState
    extends State<PasswordValidationPainelWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 11,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 6),
          child: Text(
            'SUA SENHA DEVE CONTER:',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorsApp.primaryColor,
            ),
          ),
        ),
        PasswordDotValidation(
          label: 'Mínimo 8 caracteres',
          key: const ValueKey(0),
          patterValidation: r'.{8,}',
          passwordValue: ValueNotifier<String>(''),
          updateMatch: (key, match) {},
        ),
        PasswordDotValidation(
          label: '1 letra maiúscula',
          key: const ValueKey(1),
          patterValidation: r'.*[A-Z].*',
          passwordValue: ValueNotifier<String>(''),
          updateMatch: (key, match) {},
        ),
        PasswordDotValidation(
          label: '1 ou mais números',
          key: const ValueKey(2),
          patterValidation: r'.*[0-9].*',
          passwordValue: ValueNotifier<String>(''),
          updateMatch: (key, match) {},
        ),
        PasswordDotValidation(
          label: '1 ou mais símbolos',
          key: const ValueKey(3),
          patterValidation: r'.*[!@#\$&*~].*',
          passwordValue: ValueNotifier<String>(''),
          updateMatch: (key, match) {},
        ),
        PasswordDotValidation(
          label: 'Senha igual ao confirmar senha',
          key: const ValueKey(4),
          patterValidation: r'.*',
          passwordValue: ValueNotifier<String>(''),
          updateMatch: (key, match) {},
        ),
      ],
    );
  }
}
