import 'package:flutter/material.dart';

class HomeProfesional extends StatelessWidget {
  const HomeProfesional({super.key});

  static const routeName = "home_profesional";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Profesional")),
      body: Center(child: Text("Bienvenido al Home Profesional")),
    );
  }
}
