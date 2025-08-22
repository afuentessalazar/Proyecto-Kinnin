// test/widget_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_kinnin/app.dart'; // ajusta si tu name: en pubspec.yaml es otro

void main() {
  testWidgets('KinninApp builds a MaterialApp', (tester) async {
    await tester.pumpWidget(const KinninApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
