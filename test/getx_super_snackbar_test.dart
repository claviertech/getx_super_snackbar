import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_super_snackbar/getx_super_snackbar.dart';

void main() {
  group('GetxSuperSnackbar', () {
    testWidgets('showSuccess displays a success snackbar',
        (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(home: Scaffold()));

      GetxSuperSnackbar.showSuccess('Success message');
      await tester.pump();

      expect(find.text('Success'), findsOneWidget);
      expect(find.text('Success message'), findsOneWidget);
      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    });

    testWidgets('showError displays an error snackbar',
        (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(home: Scaffold()));

      GetxSuperSnackbar.showError('Error message');
      await tester.pump();

      expect(find.text('Error'), findsOneWidget);
      expect(find.text('Error message'), findsOneWidget);
      expect(find.byIcon(Icons.error), findsOneWidget);
    });

    testWidgets('showWarning displays a warning snackbar',
        (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(home: Scaffold()));

      GetxSuperSnackbar.showWarning('Warning message');
      await tester.pump();

      expect(find.text('Warning'), findsOneWidget);
      expect(find.text('Warning message'), findsOneWidget);
      expect(find.byIcon(Icons.warning), findsOneWidget);
    });

    testWidgets('showInfo displays an info snackbar',
        (WidgetTester tester) async {
      await tester.pumpWidget(GetMaterialApp(home: Scaffold()));

      GetxSuperSnackbar.showInfo('Info message');
      await tester.pump();

      expect(find.text('Info'), findsOneWidget);
      expect(find.text('Info message'), findsOneWidget);
      expect(find.byIcon(Icons.info), findsOneWidget);
    });
  });
}
