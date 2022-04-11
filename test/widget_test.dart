import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizzler/main.dart' as app;
import 'package:integration_test/integration_test.dart';
import 'package:quizzler/quiz_brain.dart';
import 'package:quizzler/question.dart';

void main() {
  group('Test the opening page text', () {
    testWidgets('To test first question text', (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(app.Quizzler());

      // act
      final text = find.text('Some cats are actually allergic to humans');

      //assert
      expect(text, findsOneWidget);
    });

    testWidgets('To test true button text', (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(app.Quizzler());

      // act
      final text = find.text('True');

      //assert
      expect(text, findsOneWidget);
    });

    testWidgets('To test false button text', (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(app.Quizzler());

      // act
      final text = find.text('False');

      //assert
      expect(text, findsOneWidget);
    });
  });

  testWidgets('To test scaffold color', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(app.Quizzler());

    // act
    await tester.pumpWidget(MaterialApp(key: Key('S')));

    //assert
    expect(find.byKey(Key('S')), findsOneWidget);
  });
}
