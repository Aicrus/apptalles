import 'package:flutter/material.dart';
import '../design_system/design_system.dart';

/// Card de categoria com ícone e nome
class CategoryCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final VoidCallback? onTap;

  const CategoryCard({
    super.key,
    required this.name,
    this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 76,
        height: 113,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Ícone da categoria
            Container(
              width: 53,
              height: 53,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(15),
              ),
              child: imageUrl != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        imageUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.category,
                            color: AppColors.primary,
                            size: 30,
                          );
                        },
                      ),
                    )
                  : const Icon(
                      Icons.category,
                      color: AppColors.primary,
                      size: 30,
                    ),
            ),
            const SizedBox(height: 9),
            // Nome da categoria
            SizedBox(
              width: 76,
              child: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textHighlight,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

