import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:password_validation/src/shared/custom_texfield.dart';
import 'package:password_validation/src/shared/custom_texfield_pwd.dart';

void main() {
  group('CustomTexfieldPwd', () {
    testWidgets('Redender CustomTexfield', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomTexfieldPwd(
              label: 'Senha',
              hintText: 'Digite sua senha',
              backgroundColor: Colors.white,
              controller: TextEditingController(),
            ),
          ),
        ),
      );
      testWidgets('Exibe label corretamente', (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: CustomTexfieldPwd(
                label: 'Label teste',
                hintText: 'Digite sua senha',
                backgroundColor: Colors.white,
                controller: TextEditingController(),
              ),
            ),
          ),
        );
      });

      expect(find.byType(CustomTexfield), findsOneWidget);
      expect(find.text('Senha'), findsOneWidget);
      expect(find.text('Digite sua senha'), findsOneWidget);
      expect(find.byType(TextFormField), findsOneWidget);
    });
  });
}
