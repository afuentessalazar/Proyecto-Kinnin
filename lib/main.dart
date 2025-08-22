import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const KinninApp());
=======
import 'package:proyecto_kinnin/screens/home_profesional.dart';
import 'package:proyecto_kinnin/screens/home_usuario.dart';
import 'package:proyecto_kinnin/screens/login.dart';

void main() {
  runApp(const MyApp());
}

var navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Login(),
      navigatorKey: navigatorKey,
      routes: {Login.routeName: (context) => const Login()},
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Login.routeName:
            return MaterialPageRoute(builder: (ctx) => const Login());
          case HomeUsuario.routeName:
            return MaterialPageRoute(builder: (ctx) => const HomeUsuario());
          case HomeProfesional.routeName:
            return MaterialPageRoute(builder: (ctx) => const HomeProfesional());
          // Add more routes here as needed
          default:
        }
        return null;
      },
    );
  }
>>>>>>> 579ce57d200c3d6e1eef9a9c6af5d4b754b858a2
}
