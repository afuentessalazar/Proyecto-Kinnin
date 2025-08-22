import 'package:flutter/material.dart';

class HomeUsuario extends StatelessWidget {
  const HomeUsuario({super.key});

  static const routeName = "home_usuario";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Usuario")),
      body: Center(child: Text("Bienvenido al Home Usuario")),
    );
  }
}
