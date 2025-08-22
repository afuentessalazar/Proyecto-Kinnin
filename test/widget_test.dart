import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_kinnin/app.dart';

void main() {
  testWidgets('KinninApp builds a MaterialApp', (tester) async {
    await tester.pumpWidget(const KinninApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
