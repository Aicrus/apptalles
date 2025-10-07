import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../design_system/design_system.dart';
import '../components/components.dart';

/// Tela de boas-vindas com opções de Login e Registro
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          // Fundo verde com bordas arredondadas
          Positioned(
            left: 0,
            top: -130,
            right: 0,
            child: Image.asset(
              'assets/images/Ellipse 14.png',
              width: MediaQuery.of(context).size.width,
              height: 489,
              fit: BoxFit.cover,
            ),
          ),
          
          // Conteúdo principal
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    
                    // Logo do App
                    Image.asset(
                      'assets/images/Group 771.png',
                      width: 120,
                      height: 40,
                    ),
                    
                    const SizedBox(height: 40),
                    
                    // Ilustração (pessoas com carrinho)
                    Image.asset(
                      'assets/images/Group 768.png',
                      width: 273,
                      height: 237,
                    ),
                    
                    const SizedBox(height: 60),
                    
                    // Botões de Login e Registro
                    Column(
                      children: [
                          // Botão Login
                          PrimaryButton(
                            text: 'Login',
                            onPressed: () {
                              // TODO: Navegar para tela de login
                            },
                          ),
                          
                          const SizedBox(height: 18),
                          
                          // Botão Register
                          SecondaryButton(
                            text: 'Register',
                            onPressed: () {
                              // TODO: Navegar para tela de registro
                            },
                          ),
                          
                          const SizedBox(height: 28),
                          
                          // Divisor "Or login with"
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: AppColors.textMuted,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  'Or login with',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textHighlight,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: AppColors.textMuted,
                                ),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: 23),
                          
                          // Botão Google
                          _SocialLoginButton(
                            icon: 'assets/images/grommet-icons_google.png',
                            label: 'Google',
                            backgroundColor: AppColors.white,
                            textColor: const Color(0xFF4F4F4F),
                            borderColor: AppColors.textMuted,
                            onPressed: () {
                              // TODO: Login com Google
                            },
                          ),
                          
                          const SizedBox(height: 15),
                          
                          // Botão Facebook
                          _SocialLoginButton(
                            icon: 'assets/images/bi_facebook.png',
                            label: 'Facebook',
                            backgroundColor: const Color(0xFF2D9CDB),
                            textColor: AppColors.white,
                            borderColor: Colors.transparent,
                            onPressed: () {
                              // TODO: Login com Facebook
                            },
                          ),
                          
                        const SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Botão de login social (Google/Facebook)
class _SocialLoginButton extends StatelessWidget {
  final String icon;
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final VoidCallback? onPressed;

  const _SocialLoginButton({
    required this.icon,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.borderColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 38,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          side: BorderSide(
            color: borderColor,
            width: borderColor == Colors.transparent ? 0 : 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          children: [
            const SizedBox(width: 10), // Padding da esquerda
            Image.asset(
              icon,
              width: 18,
              height: 18,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ),
            const SizedBox(width: 40), // Espaço para balancear o ícone
          ],
        ),
      ),
    );
  }
}

