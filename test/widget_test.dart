import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App builds and shows UserScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('User not logged in'), findsOneWidget);
  });
}
