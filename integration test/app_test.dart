import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quizzler/main.dart' as app;
import 'package:quizzler/question.dart';
import 'package:quizzler/main.dart';
import 'package:integration_test/integration_test.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('To test app', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    //arrange
    var _true = find.byKey(Key('B1'));
    var _false = find.byKey(Key('B2'));

    //act
    for (var i = 0; i < 2; i++) {
      await tester.tap(_true);
      await Future.delayed(const Duration(seconds: 1));
      await tester.tap(_false);
      await Future.delayed(const Duration(seconds: 1));
    }

    await tester.pumpAndSettle();

    expect(Icons.check, findsNWidgets(3));
  });
}
