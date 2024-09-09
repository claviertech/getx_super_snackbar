import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_super_snackbar/getx_super_snackbar.dart';

void main() {
  testWidgets('shows success snackbar with correct message and icon',
      (WidgetTester tester) async {
    // Build the app and trigger the snackbar
    await tester.pumpWidget(GetMaterialApp(home: Scaffold()));
    GetxSuperSnackbar.showSuccess('Success message');

    // Start and settle animations
    await tester.pump(); // Start animation
    await tester.pumpAndSettle(); // Wait for all animations to complete
    await Future.delayed(Duration(seconds: 1)); // Add a delay before checking

    // Verify that the snackbar appears with the correct text and icon
    expect(find.text('Success'), findsOneWidget);
    expect(find.text('Success message'), findsOneWidget);
    expect(find.byIcon(Icons.check_circle), findsOneWidget);
  });
}
