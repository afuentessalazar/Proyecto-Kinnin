import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/text_styles.dart';
import '../../../core/router/app_router.dart';
import '../../shared/widgets.dart';

class LoginPatientPage extends StatefulWidget {
  const LoginPatientPage({super.key});

  @override
  State<LoginPatientPage> createState() => _LoginPatientPageState();
}

class _LoginPatientPageState extends State<LoginPatientPage> {
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
          // Fondo
          Image.asset('assets/images/login_bg.jpg', fit: BoxFit.cover),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(color: Colors.black26),
          ),

          // Cambiar a profesional
          Positioned(
            top: 40, right: 16,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, AppRoutes.loginProfessional),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [BoxShadow(blurRadius: 8, color: Colors.black26, offset: Offset(0, 4))],
                ),
                child: Row(children: const [
                  Icon(Icons.switch_account, color: Colors.black87),
                  SizedBox(width: 8),
                  Text(
                    'Cambiar a perfil de profesional',
                    style: TextStyle(fontFamily: 'SFPro', fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
          ),

          // Card principal
          Center(
            child: Container(
              width: size.width < 480 ? size.width * 0.9 : 420,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  colors: [
                    AppColors.blue1.withValues(alpha: 0.85),
                    AppColors.grey2.withValues(alpha: 0.85),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 16, offset: Offset(0, 8))],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo temporal (reemplazarr)
                  Container(
                    height: 84, width: 84,
                    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    alignment: Alignment.center,
                    child: const Text('K', style: TextStyle(fontFamily: 'Lobster', fontSize: 42)),
                  ),
                  const SizedBox(height: 16),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Iniciar sesión',
                      style: AppTextStyles.titleMedium.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.white70, fontFamily: 'SFPro', fontSize: 14),
                        children: [
                          TextSpan(text: '¿Eres nuevo? '),
                          TextSpan(text: 'Crea tu cuenta aquí', style: TextStyle(fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  RoundedInput(
                    hint: 'example@user.cl',
                    controller: emailCtrl,
                    keyboard: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 12),
                  RoundedInput(hint: '**********', controller: passCtrl, obscure: true),
                  const SizedBox(height: 16),

                  PrimaryButton(
                    label: 'Continue',
                    onPressed: () {
                      // TODO: validar -> navegar a Home Paciente
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login paciente (demo)')),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  const Text('Or', style: TextStyle(color: Colors.white, fontFamily: 'SFPro')),
                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(icon: Icons.g_mobiledata, onTap: () {/* TODO: Google */}),
                      const SizedBox(width: 20),
                      SocialButton(icon: Icons.facebook, onTap: () {/* TODO: Facebook */}),
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
