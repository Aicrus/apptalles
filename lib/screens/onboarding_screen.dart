import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../design_system/design_system.dart';
import '../components/components.dart';

/// Tela de onboarding/boas-vindas
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        children: [
          // Fundo com a imagem Ellipse 14.png
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/Ellipse 14.png',
              width: MediaQuery.of(context).size.width,
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
                    const SizedBox(height: 60),
                    
                    // Logo e Nome do App
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Ícone da logo (vegetais)
                        Image.asset(
                          'assets/images/Group 771.png',
                          width: 28,
                          height: 34,
                        ),
                        const SizedBox(width: 8),
                        // Nome do app
                        Text(
                          'Kangsayur',
                          style: GoogleFonts.montserratAlternates(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                            height: 1.21,
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 40),
                    
                    // Ilustrações (duas pessoas lado a lado)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Group_764.png',
                          width: 120,
                          height: 150,
                        ),
                        const SizedBox(width: 20),
                        Image.asset(
                          'assets/images/Group_767.png',
                          width: 120,
                          height: 150,
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 60),
                    
                    // Texto de boas-vindas
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                            height: 1.5,
                          ),
                          children: const [
                            TextSpan(text: 'Kangsayur is a solution for '),
                            TextSpan(
                              text: 'Grocery Shopping',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            TextSpan(text: ' every you need'),
                          ],
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 60),
                    
                    // Botão Get Started
                    SizedBox(
                      width: 335,
                      height: 54,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Navegar para a próxima tela
                          Navigator.of(context).pop(); // Por enquanto, volta para a tela anterior
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.white,
                          foregroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        child: const Text('Get Started'),
                      ),
                    ),
                    
                    const SizedBox(height: 40),
                    
                    // Indicadores de página
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: AppColors.white.withOpacity(0.8),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: AppColors.white.withOpacity(0.4),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: AppColors.white.withOpacity(0.4),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 40),
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
