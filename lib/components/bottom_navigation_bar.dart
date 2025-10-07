import 'package:flutter/material.dart';
import '../design_system/design_system.dart';

/// Bottom Navigation Bar customizada
class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 377,
      height: 86,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000), // rgba(0,0,0,0.15)
            offset: Offset(0, -5),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
            index: 0,
            label: 'Home',
          ),
          _buildNavItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            index: 1,
            label: 'Favoritos',
          ),
          _buildNavItem(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            index: 2,
            label: 'Carrinho',
          ),
          _buildNavItem(
            icon: Icons.person_outline,
            selectedIcon: Icons.person,
            index: 3,
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required IconData selectedIcon,
    required int index,
    required String label,
  }) {
    final isSelected = currentIndex == index;
    
    return GestureDetector(
      onTap: () => onTap?.call(index),
      child: Container(
        width: 29,
        height: 29,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          isSelected ? selectedIcon : icon,
          color: isSelected ? AppColors.white : AppColors.textMuted,
          size: 21,
        ),
      ),
    );
  }
}

/// Bottom Navigation Bar simples (apenas ícones)
class SimpleBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int>? onTap;

  const SimpleBottomNavigationBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 86,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000), // rgba(0,0,0,0.15)
            offset: Offset(0, -5),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
            index: 0,
          ),
          _buildNavItem(
            icon: Icons.favorite_border,
            selectedIcon: Icons.favorite,
            index: 1,
          ),
          _buildNavItem(
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            index: 2,
          ),
          _buildNavItem(
            icon: Icons.person_outline,
            selectedIcon: Icons.person,
            index: 3,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required IconData selectedIcon,
    required int index,
  }) {
    final isSelected = currentIndex == index;
    
    return GestureDetector(
      onTap: () => onTap?.call(index),
      child: Container(
        width: 29,
        height: 29,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          isSelected ? selectedIcon : icon,
          color: isSelected ? AppColors.white : AppColors.textMuted,
          size: 21,
        ),
      ),
    );
  }
}
