import 'package:flutter/material.dart';
import '../design_system/design_system.dart';

/// Item de lista horizontal com imagem e informações do produto
class ProductListItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double price;
  final String unit;
  final VoidCallback? onTap;

  const ProductListItem({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.unit = 'kg',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 206,
        height: 63,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.07),
              offset: const Offset(0, 3),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            // Imagem do produto
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              child: Container(
                width: 84,
                height: 63,
                color: AppColors.cardBackground,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.image_not_supported,
                      size: 30,
                      color: AppColors.textMuted,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 9),
            // Informações do produto
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 11, bottom: 11, right: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Nome do produto
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textHighlight,
                        height: 1.23,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    // Preço
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Rp ${_formatPrice(price)}',
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                            height: 1.91,
                            letterSpacing: -0.32,
                          ),
                        ),
                        Text(
                          ' / $unit',
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textSecondary,
                            height: 1.63,
                            letterSpacing: 0.066,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatPrice(double price) {
    return price.toInt().toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]},',
        );
  }
}

