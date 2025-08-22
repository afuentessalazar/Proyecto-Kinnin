import 'package:flutter/material.dart';

/// ===================
/// INPUTS
/// ===================
class RoundedInput extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obscure;
  final TextInputType keyboard;

  const RoundedInput({
    super.key,
    required this.hint,
    required this.controller,
    this.obscure = false,
    this.keyboard = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      keyboardType: keyboard,
      decoration: const InputDecoration().copyWith(hintText: hint),
    );
  }
}

/// ===================
/// BOTÓN PRIMARIO
/// ===================
class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const PrimaryButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(label));
  }
}

/// ===================
/// BOTÓN SOCIAL
/// ===================
class SocialButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const SocialButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        height: 64, width: 64,
        decoration: const BoxDecoration(
          color: Color(0xFFE9E9E9),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 32, color: Colors.black87),
      ),
    );
  }
}
