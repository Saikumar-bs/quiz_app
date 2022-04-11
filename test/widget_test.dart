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

  testWidgets('To test scaffold', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(app.Quizzler());

    // act
    await tester.pumpWidget(MaterialApp(key: Key('S')));

    //assert
    expect(find.byKey(Key('S')), findsOneWidget);
  });

  testWidgets('To test scaffold', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(app.Quizzler());

    // act
    final myScaffold = tester.widget(find.byKey(Key('S')));

    //assert
    expect((myScaffold as Scaffold).backgroundColor, Colors.grey.shade900);
  });

  testWidgets('finds padding of question', (WidgetTester tester) async {
    // arrange
    const childWidget = Padding(padding: EdgeInsets.all(10.0));

    // act
    await tester.pumpWidget(Container(child: childWidget));

    //assert
    expect(find.byWidget(childWidget), findsNWidgets(1));
  });

  testWidgets('To test button B1 using a key', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(app.Quizzler());

    // act
    await tester.pumpWidget(MaterialApp(key: Key('B1')));

    //assert
    expect(find.byKey(Key('B1')), findsOneWidget);
  });

  testWidgets('To test button B2 color', (WidgetTester tester) async {
    // arrange
    await tester.pumpWidget(app.Quizzler());

    // act
    final mybutton = tester.widget(find.byKey(Key('B2')));

    //assert
    expect((mybutton as FlatButton).color, Colors.red);
  });
}
