import 'package:flutter/material.dart';
import '../../features/auth/login/login_patient.dart';
import '../../features/auth/login/login_professional.dart';

class AppRoutes {
  static const loginPatient = '/login';
  static const loginProfessional = '/login/pro';
}

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginProfessional:
      return MaterialPageRoute(builder: (_) => const LoginProfessionalPage());
    case AppRoutes.loginPatient:
    default:
      return MaterialPageRoute(builder: (_) => const LoginPatientPage());
  }
}
