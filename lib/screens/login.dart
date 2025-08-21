import 'package:flutter/material.dart';
import 'package:proyecto_kinnin/screens/home_profesional.dart';
import 'package:proyecto_kinnin/screens/home_usuario.dart';

enum UserType { cliente, profesional }

class Login extends StatefulWidget {
  const Login({super.key});

  static const routeName = "login";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Set<UserType> _selection = {UserType.cliente};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SegmentedButton(
                segments: const <ButtonSegment<UserType>>[
                  ButtonSegment(
                    value: UserType.cliente,
                    label: Text("Cliente"),
                  ),
                  ButtonSegment(
                    value: UserType.profesional,
                    label: Text("Profesional"),
                  ),
                ],
                selected: _selection,
                onSelectionChanged: (Set<UserType> newSelection) {
                  setState(() {
                    _selection = newSelection;
                  });
                },
                showSelectedIcon: false,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_selection.contains(UserType.profesional)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => const HomeProfesional(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => const HomeUsuario()),
                    );
                  }
                },
                child: Text("Logearse"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
