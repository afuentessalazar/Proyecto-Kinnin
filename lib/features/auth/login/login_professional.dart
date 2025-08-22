import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/router/app_router.dart';
import '../../shared/widgets.dart';

class LoginProfessionalPage extends StatefulWidget {
  const LoginProfessionalPage({super.key});

  @override
  State<LoginProfessionalPage> createState() => _LoginProfessionalPageState();
}

class _LoginProfessionalPageState extends State<LoginProfessionalPage> {
  final emailCtrl = TextEditingController();
  final passCtrl  = TextEditingController();

  @override
  void dispose() {
    emailCtrl.dispose();
    passCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/login_bg.jpg', fit: BoxFit.cover),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(color: Colors.black26),
          ),

          // Cambiar a paciente
          Positioned(
            top: 40, right: 16,
            child: GestureDetector(
              onTap: () => Navigator.pushReplacementNamed(context, AppRoutes.loginPatient),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [BoxShadow(blurRadius: 8, color: Colors.black26, offset: Offset(0,4))],
                ),
                child: Row(children: const [
                  Icon(Icons.switch_account, color: Colors.black87),
                  SizedBox(width: 8),
                  Text(
                    'Cambiar a perfil de paciente',
                    style: TextStyle(fontFamily: 'SFPro', fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
          ),

          Center(
            child: Container(
              width: size.width < 480 ? size.width * 0.9 : 420,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  // withOpacity -> withValues
                  colors: [
                    AppColors.blue1.withValues(alpha: 0.85),
                    AppColors.green1.withValues(alpha: 0.85),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 16, offset: Offset(0, 8))],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Acceso profesional',
                      style: AppTextStyles.titleMedium.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  RoundedInput(
                    hint: 'correo profesional',
                    controller: emailCtrl,
                    keyboard: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 12),
                  RoundedInput(hint: 'contraseña', controller: passCtrl, obscure: true),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    label: 'Ingresar',
                    onPressed: () {
                      // TODO: validar -> navegar a Home Profesional
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login pro (demo)')),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(icon: Icons.g_mobiledata, onTap: () {}),
                      const SizedBox(width: 20),
                      SocialButton(icon: Icons.facebook, onTap: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
