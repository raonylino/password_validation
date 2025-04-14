import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:password_validation/src/pages/widgets/password_dot_validation.dart';

class MockUpdateMatchCallback extends Mock {
  void call(ValueKey<int> key, bool match);
}

void main() {
  testWidgets('teste sucesso quando senha correta', (tester) async {
    final mockUpdateMatch = MockUpdateMatchCallback();

    registerFallbackValue(ValueKey<int>(0));

    await tester.pumpWidget(
      MaterialApp(
        home: PasswordDotValidation(
          label: 'Somente numeros',
          key: const ValueKey(0),
          patterValidation: r'.*[0-9].*',
          passwordValue: ValueNotifier<String>('12345678'),
          updateMatch: mockUpdateMatch.call,
        ),
      ),
    );

    final checkBox = tester.widget<Visibility>(find.byType(Visibility));
    expect(checkBox.visible, isTrue);

    verify(() => mockUpdateMatch.call(const ValueKey(0), true)).called(1);
  });
}
