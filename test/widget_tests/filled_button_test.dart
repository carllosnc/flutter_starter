import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/components/components.dart';
import './mock_app.dart';

testFilledButton() {
  testWidgets('Check button in normal state', (WidgetTester tester) async {
    await tester.pumpWidget(
      App(
        children: [
          AppFilledButton(
            label: 'Button',
            onPressed: () {},
          ),
        ],
      ),
    );

    expect(find.byType(FilledButton), findsOneWidget);
    expect(find.text('Button'), findsOneWidget);
  });

  testWidgets('Check button in loading state', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          AppFilledButton(
            label: 'Button',
            loading: true,
          ),
        ],
      ),
    );

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.text('Button'), findsNothing);
  });

  testWidgets('Check button in hidden state', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          AppFilledButton(
            label: 'Button',
            hidden: true,
          ),
        ],
      ),
    );

    expect(find.byType(SizedBox), findsOneWidget);
    expect(find.text('Button'), findsNothing);
  });

  testWidgets('Check button in disabled state', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          AppFilledButton(label: 'Button'),
        ],
      ),
    );

    expect(find.byType(FilledButton), findsOneWidget);
    expect(find.text('Button'), findsOneWidget);
  });
}
