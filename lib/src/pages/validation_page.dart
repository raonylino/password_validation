import 'package:flutter/material.dart';
import 'package:password_validation/src/shared/colors_app.dart';
import 'package:password_validation/src/shared/custom_texfield_pwd.dart';

class ValidationPage extends StatelessWidget {
  const ValidationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsApp.backgroundkColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 44, bottom: 42),
                  child: Image.asset('assets/images/logoadf.png'),
                ),
                Text(
                  'Defina uma senha',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorsApp.primaryColor,
                  ),
                ),
                Text(
                  'Uma senha forte ajuda a mantar sua conta segura.',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.mediamGreayColor,
                  ),
                ),
                const SizedBox(height: 26),
                CustomTexfieldPwd(
                  label: 'Senha',
                  hintText: 'Digite sua senha',
                  backgroundColor: Colors.white,
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 22),
                CustomTexfieldPwd(
                  label: 'Confirmar sua senha',
                  hintText: 'Digite sua senha',
                  backgroundColor: Colors.white,
                  controller: TextEditingController(),
                ),
                const SizedBox(height: 37),
                Container(height: 145, color: Colors.grey),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Senha reprovada'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
